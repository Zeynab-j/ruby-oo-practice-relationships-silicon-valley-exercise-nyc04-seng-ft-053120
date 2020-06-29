require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("twitter", "Jack", "twitter.com")
s2 = Startup.new("facebook", "Mark", "facebook.com")
s3 = Startup.new("reddit", "Satoshi", "reddit.com")

# name, total_worth
v1 = VentureCapitalist.new("Dan", 2_000_000)
v2 = VentureCapitalist.new("Ali", 100_000_000)
v3 = VentureCapitalist.new("zok", 6_0000_000_000_000)

# startup, venture_capitalist, type, investment
f1 = FundingRound.new(s1, v1, "seed", 500000)
f2 = FundingRound.new(s1, v2, "seed", 900)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line