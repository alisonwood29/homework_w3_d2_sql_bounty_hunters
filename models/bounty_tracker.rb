
require('pg')

class BountyTracker

  attr_reader :id
  attr_accessor :name, :bounty_value, :danger_level, :still_wanted

  def initialize (options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @bounty_value = options["bounty_value"].to_i
    @danger_level = options["danger_level"]
    @still_wanted = options["still_wanted"]
  end

  def create_connection()
    return PG.connect({dbname: 'space_cowboys', host:'localhost'})
  end

  def save()
    db = create_connection()
    sql = "INSERT INTO space_cowboys (name, bounty_value, danger_level, still_wanted)
          VALUES ($1, $2, $3, $4) RETURNING id"

    values = [@name, @bounty_value, @danger_level, @still_wanted]

    db.prepare("insert", sql)
    @id = db.exec_prepared("insert", values)[0]['id'].to_i

    db.close()

  end

  def update()
    db = create_connection()
    sql = "UPDATE space_cowboys SET (name, bounty_value, danger_level, still_wanted)
      = ($1, $2, $3, $4) WHERE id = $5"
    values = [@name, @bounty_value, @danger_level, @still_wanted, @id]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close
  end

end
