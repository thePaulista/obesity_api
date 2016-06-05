class School < OpenStruct
  def self.service
    @service ||= SchoolistService.new
  end

  def self.all
    service.schools.map { |school| new(school) }
   # service.schools.map { |school| School.new(school) }
   #  service.schools.map { |school| _build_object(school) }
      #up to schools, it is an array of hashes, then making an object
  end

  def self.find(id)
    data = service.school(id)
    new(data)
    #School.new(data)
  end

  def self.create(params)
    School.new(service.create_school(params))
  end


# def self._build_object(data)
#   OpenStruct.new
# end

#  attr_accessor :id, :uid, :overweight_percentage, :obese_percentage, :county_id
#
#  def initialize(data)
#    @id =  data["id"]
#    @uid =  data["uid"]
#    @overweight_percentage =  data["overweight_percentage"]
#    @obese_percentage =  data["obese_percentage"]
#    @county_id =  data["county_id"]
#  end
end
