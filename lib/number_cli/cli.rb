class Cli

  def run
    welcome
    Api.get_number
    menu

  end

  def menu
    #display everything and ask for the user input
    print_selection
    id = valid_id?(input)
    x = get_number_fact(id)
    print_fact(x)
    print_continue
    continue?(choice)

  end

  #def print_all
    #print all output
    #Number.all.each{|n| puts "#{n.id}.) #{n.fact}"}
  #end

  def print_selection
    #asking the user for a valid input
    puts "Choose a number from 1 to 100 for a random fact"
  end

  def error
    #determine if iput is in input range if not it will display this message
    puts "Invalid entry"
  end

  def input
    gets.chomp
  end

  def valid_id?(id)
    id = id.to_i
    #if there is an invalid entry, it will display the error message and rreturn yo main
    if id < 0 || id > 100
      error
      sleep 1
      menu
    end

    id

  end

  def continue?(choice)
    if choice == 'y'
      menu
    else
      print_goodbye
      exit

    end

  end

  def welcome
    puts "Welcome to my number Cli"
  end

  def get_number_fact(id)
   num = Number.find_by_id(id)
   num
end

def print_continue
  puts 'Do you want to try again y/n'
end

def print_goodbye
  puts "Thanks see you again soon"
end

def choice
  gets.chomp
end
def print_fact(id)
  #binding.pry
  puts "#{id.fact}"


end

end
