class Number
  attr_accessor :fact, :id
  @@all = []
  def initialize(fact,id)
    @fact = fact
    @id = id
    @@all << self
  end

  def self.all
    @@all
  end


end
