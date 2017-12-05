
require_relative('./models/bounty_tracker')


space_cowboy_1_p = {"name" => "Predator", "bounty_value" => 10000, "danger_level" => "XXXXXX DANGEROUS", "still_wanted" => true}
space_cowboy_1 = BountyTracker.new(space_cowboy_1_p)
space_cowboy_1.save()

puts space_cowboy_1.still_wanted
puts space_cowboy_1.id

space_cowboy_1.name = "Eric"
space_cowboy_1.update
