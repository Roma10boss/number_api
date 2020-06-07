class Api

  BASE_URL = "http://numbersapi.com/1..100"

  def self.get_number

    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)

    data.each do |number|
      fact = number[1]
      id = number[0].to_i

      Number.new(fact, id)
    end
  end

  def self.get_fact_by_id(id)
    res = RestClient.get("#{BASE_URL}#{id}")
    data = JSON.parse(res.body)
  end

  def self.find_by_id(id)
          idx = id.to_i - 1
          @@all[idx]
  end

end
