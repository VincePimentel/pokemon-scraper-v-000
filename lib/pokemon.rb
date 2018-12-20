class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(data_hash)
    data_hash.each do |key, value|
      self.send(("#{key}="), value)
    end
  end

  def self.save(id, name, type)
    Pokemon.new(data = {id: id, name: name, type: type})
  end
end
