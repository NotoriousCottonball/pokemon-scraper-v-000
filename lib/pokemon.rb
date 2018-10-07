class Pokemon
attr_accessor :id, :name, :type, :db, :hp
   
   def initialize(hash)
    @id = db[:id]
    @name = db[:name]
    @type = db[:type]
    @db = db[:db]
    @hp = db[:hp]
  end
   
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  def self.find(row_id, db)
    pokemon_from_db = db.execute("SELECT * FROM pokemon WHERE id = ?", row_id)
    pokemon_from_db.each do |row|
      self.new(
        pokemon_hash[:id] = row[0],
        pokemon_hash[:name] = row[1],
        pokemon_hash[:type] = row[2],
        pokemon_hash[:hp] = row[3],
        pokemon_hash[:db] = db
        
    
     
  end
   
  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
 end	
