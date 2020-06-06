class Cli

  def run
    welcome
    Api.get_number
    main
  end

  def main
    print_all
    print_selection
    id = input
  end

  def print_all
    Number.all.each{|n| puts "#{n.id}.) #{n.fact}"}
  end

  def print_selection
    puts "Choose a number from 1 to 10 for a random fact"
  end

  def error
    "Invalid entry, Please type a number between 1 and 10"
  end

  def input
    gets.chomp
  end

  def valid_id?(id)
    id = id.to_i
    if id < 1 || id > 10
      error
      main
    end
    id
  end

  def welcome
    puts "Welcome to my number Cli"
  end


end
