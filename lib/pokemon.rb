class Pokemon
attr_accessor :id, :name, :type, :db, :hp
   
   def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @type = hash[:type]
    @db = hash[:db]
    @hp = hash[:hp]
  end
   
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  def self.find(row_id, db)
    pokemon_from_db = db.execute("SELECT * FROM pokemon WHERE id = ?", row_id)
    pokemon_from_db.each do |node|
        
      )
    end
  end
   
  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
 end	
