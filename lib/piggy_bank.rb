class PiggyBank
  def initialize
    @bank = 0
  end
  
  def menu
    loop do
      puts "Enter 1 - add balance"
      puts "Enter 2 - shake piggy bank"
      puts "Enter 3 - show balance"
      puts "Enter 4 - break piggy bank"
      puts "Enter 5 - withdraw from piggy bank"
      puts "Write 'exit' to exit"
      choice = gets.chomp
      break if choice == "exit"
      action(choice.to_i)
    end
  end
  
  def action(num)
    case num
    when 1
      add
    when 2
      shake
    when 3
      show
    when 4
      smash
    when 5
      withdraw
    end
  end
    
  def add
    puts "how much coins would you add"
    coins = gets.chomp.to_i
    @bank += coins
    puts "Your account is now #{@bank}"
  end
  
  def shake
    if @bank > 0
      puts "Cling"
    else 
      puts "Empty"
    end
  end
  
  def show
    puts "You have #{@bank} on you account"
  end
  
  def smash
    if @bank > 0
      puts "Piggy bank smashed and #{@bank} land on the floor"
      @bank = 0
    else
      puts "Empty"
    end
  end
  
  def withdraw
    puts "How much coins would you like to withdraw?"
    coins = gets.chomp.to_i
    if coins > @bank
      puts "No enough coins. You have only #{@bank}"
    else
      @bank -= coins
      puts "You have now #{@bank} coins"
    end
  end
  
end


my_bank = PiggyBank.new
my_bank.menu