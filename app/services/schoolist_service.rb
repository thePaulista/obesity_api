class SchoolistService
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url:  "http://localhost:3000/v1")
  end

  def schools #method to return all schools
    parse(connection.get("schools"))
    #sending get request nottp://localhost:3000/v1/schools
  end

  def school(id)
    parse(connection.get("schools/#{id}"))
  end

  def create_school(params)
    parse(connection.post("schools", params))
  end

  def counties
    parse(connection.get("counties"))
  end

  def county(id)
    parse(connection.get("counties/#{id}"))
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end


