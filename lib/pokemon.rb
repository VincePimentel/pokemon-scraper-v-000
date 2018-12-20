class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(data_hash)
    data_hash.each do |key, value|
      self.send(("#{key}="), value)
    end
  end

  def self.save(name, type, db)
    #ins = db.prepare("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", [name, type])
  end
end
