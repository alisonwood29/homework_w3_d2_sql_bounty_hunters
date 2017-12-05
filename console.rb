
require_relative('./models/bounty_tracker')


space_cowboy_1_p = {"name" => "Predator", "bounty_value" => 10000, "danger_level" => "XXXXXX DANGEROUS", "still_wanted" => true}

space_cowboy_2_p = {"name" => "Donald Trump", "bounty_value" => 5000000, "danger_level" => "Equal to Kim Jong Un", "still_wanted" => false}

space_cowboy_1 = BountyTracker.new(space_cowboy_1_p)
space_cowboy_2 = BountyTracker.new(space_cowboy_2_p)
space_cowboy_1.save()
space_cowboy_2.save()

puts space_cowboy_1.id

space_cowboy_1.name = "Eric"
space_cowboy_1.update

#space_cowboy_2.delete

eric = BountyTracker.find("Eric")
p eric
