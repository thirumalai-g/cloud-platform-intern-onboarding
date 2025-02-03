
# Public Acess modifier
# https://www.geeksforgeeks.org/ruby-access-control/

class Geeks
  def publicmethod
    puts "it is default public method"
  end
  public

  def publicmethod2
    puts "it is public method using public keyword"
  end
end


obj1 = Geeks.new()

obj1.publicmethod
obj1.publicmethod2


#protected Access modifier
# A protocted method can't can be called directly or outside a class can we use inside class or its subclass



class Bankdetails
  protected
  def useramount
    puts "usr1 has 2lakhs "
  end

end

class BankUser < Bankdetails
  def userdetails
    useramount
  end
end

# we can't call directely method by using keyword

obj=BankUser.new

obj.userdetails

#private method used only internal process in class

class BankAccount
  def initialize(amount)
    @amount = amount
  end
  def deposit(amount)
    if valid_amount(@amount)
      @amount += amount
      puts "Amount was deposited to your account"
    else
      puts "Enter a valid amount"
    end
  end
  def withdraw(amount)
    if valid_amount(@amount)
      if((@amount) > amount)
        @amount -= amount
        puts "Amount was withdrawn from your account"
      else
        puts"Enter a valid amount"
      end
    else
      puts"Enter a valid amount"
    end
  end

  private
  def valid_amount(amount)
    return amount>0 ?1:0
  end
end


user1 = BankAccount.new(10050)

# user1.deposit(10050)

user1.withdraw(10050)