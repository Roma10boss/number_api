class Cli

  def run
    # Program guide
    welcome
    Api.get_number
    menu

  end

  def welcome
    # Displays a welcome message to the user
    puts "Welcome to my number Cli"
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

  def print_selection
    #asking the user for a valid input
    puts "Choose a number from 1 to 100 for a random fact"
  end

  def input
    # Registers the input from the user
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
    # It will display the id
    id

  end

  def error
    #determine if iput is in input range if not it will display this message
    puts "Invalid entry"
  end

  def get_number_fact(id)
    # Will get the fact from the user via chosen number
    num = Number.find_by_id(id)
    num
  end

  def print_fact(id)
    # It will print the facts
    puts "#{id.fact}"
  end

  def print_continue
    # Interacting with the user asking whether or not to continue
    puts 'Do you want to try again y/n'
  end

  def choice
    # Gets the user choice
    gets.chomp
  end

  def continue?(choice)
    # If the user typed 'y' it will return to menue
    if choice == 'y'
      menu
    else
      # If not, the good by method will be called
      print_goodbye
      exit

    end
  end

  def print_goodbye
    # Prints a goodbye message
    puts "Thanks see you again soon"
  end
end
