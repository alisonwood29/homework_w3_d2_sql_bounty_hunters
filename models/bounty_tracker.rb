class BountyTracker

  attr_reader :id
  attr_accessor :name, :bounty_value, :danger_level, :still_wanted

  def initialize (options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @bounty_value = options["bounty_value"].to_i
    @danger_level = options["danger_level"]
    @still_wanted = options["still_wanted"].to_b
  end

  

end
