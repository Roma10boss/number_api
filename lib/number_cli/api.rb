class Api

  BASE_URL = 'http://numbersapi.com/'

  def self.get_number
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    data["results"].each do |number|
      fact = number ['fact']
      id = number ['url'].split("/")[-1]
      Number.new(fact, id)
    end
  end
end
