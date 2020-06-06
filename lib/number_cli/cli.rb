class Cli

  def run
    welcome
    Api.get_number
    menu

  end

  def menu
    #display everything and ask for the user input
    print_all
    print_selection
    id = valid_id?(input)
    get_number_fact(id)
  end

  def print_all
    #print all output
    Number.all.each{|n| puts "#{n.id}.) #{n.fact}"}
  end

  def print_selection
    #asking the user for a valid input
    puts "Choose a number from 1 to 10 for a random fact"
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
    if id < 1 || id > 10
      error
      sleep 1
      menu
    end
    id
  end

  def welcome
    puts "Welcome to my number Cli"
  end

  def get_number_fact(id)
    Api.get_fact_by_id
  end

end
