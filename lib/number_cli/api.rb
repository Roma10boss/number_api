class Api

  BASE_URL = "http://numbersapi.com/1..100"

  def self.get_number
    #binding.pry
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)

    data.each do |number|
      #binding.pry
      fact = number[1]
      id = number[0].to_i
binding.pry
      Number.new(fact, id)
    end
  end

  def self.get_fact_by_id(id)
    res = RestClient.get("#{BASE_URL}#{id}")
    data = JSON.parse(res.body)
  end
end
