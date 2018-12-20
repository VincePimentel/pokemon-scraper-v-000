require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(data_hash)
    data_hash.each do |key, value|
      self.send(("#{key}="), value)
    end
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
  end

  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    #binding.pry
  end
end
