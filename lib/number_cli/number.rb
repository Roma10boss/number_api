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

  def self.find_by_id(id)
         idx = id.to_i - 1
         @@all[idx]
     end

end
