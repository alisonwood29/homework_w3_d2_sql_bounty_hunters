require("pry-byebug")
require_relative('./models/bounty_tracker')

BountyTracker.delete_all()

space_cowboy_1 = BountyTracker.new({
  "name" => "Predator",
  "bounty_value" => 10000,
  "danger_level" => "XXXXXX DANGEROUS",
  "still_wanted" => true
})

space_cowboy_2 = BountyTracker.new({
  "name" => "Donald Trump",
  "bounty_value" => 5000000,
  "danger_level" => "XXX",
  "still_wanted" => false
})


space_cowboy_1.save()
space_cowboy_2.save()

# space_cowboy_1.delete

space_cowboy_1.name = "Eric"
space_cowboy_1.update


eric = BountyTracker.find("Eric")

price = BountyTracker.find_by_price(15000)

cowboys = BountyTracker.all()

binding.pry
nil
