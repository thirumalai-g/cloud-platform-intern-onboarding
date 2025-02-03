# frozen_string_literal: true

require 'sinatra'

require 'mongoid'


# get '/users' do
#   'Welcome to Booklist!'
# end


# DB sep  mongoid load the mongodb config file and establish the connection between ruby and mongodb


Mongoid.load! "mongoid.config"


class Book
  include Mongoid::Document

  field :title,type: String
  field :author, type: String
  field :isbn, type: String


  validates :isbn, presence: true
  validates :title, presence: true
  validates :author, presence: true

  index({ title: 'text' })
  index({isbn:1},{unique: true ,name: 'isbn_index'})

  scope :title,->(title){where(title:/^#{title}/)}
  scope :isbn,->(isbn){where(isbn: isbn)}
  scope :author,->(author){where(author:author)}

end


class BookSerializer
  def initialize(book)
    @book = book
  end
  def as_json(*)
    data={
      title: @book.title,
      author: @book.author,
      isbn: @book.isbn,
      id: @book.id.to_s,
    }
    data[:errors] = @book.errors if @book.errors.any?
    data
  end
end

post '/books' do
  book = Book.new(json_params)
  if book.save
    response.headers['Location']="#{base_url}/books/#{book.id}"
    status 201
  else
    status 422
    body BookSerializer.new(book).to_json
  end
end



helpers do
  def base_url
    @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
  end

  def json_params
    begin
      JSON.parse(request.body.read)
    rescue
      halt 400,{message:'Invalid JSON'}.to_json
    end
  end
end


patch '/books/:id' do |id|
  book = Book.where(id:id).first
  halt 404 unless book
  if book.update_attributes(json_params)
    BookSerializer.new(book).to_json
  else
    status 422
    body BookSerializer.new(book).to_json
  end

end



delete '/books/:id' do |id|
  book = Book.where(id:id).first
  book.destroy if book
  status 204
end






get '/books' do
  books = Book.all
  [:title, :author, :isbn, :errors].each do |filter|
    books = books.send(filter,params[filter]) if params[filter]
  end
  # books.map{|book| BookSerializer.new(book)}.to_json
  books.to_json
end





# get '/books' do
#   books=Book.all
#
#   [:title,:isbn,:author].each do |filter|
#     books=Book.send(filter,params[filter]) if params[filter]
#   end
#   books.to_json
# end







# get '/' do
#   before do
#     content_type :'application/json'
#   end
#
#   get '/books' do
#     Book.all.to_json
#   end
# end






