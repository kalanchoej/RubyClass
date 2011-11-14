def random_novel
  years = [*1930..1950]
  people = ["John Smith", "Jimmy Jones", "Jack White", "Herbert Johnson", "Ronald McDonald"]
  places = ["New YorK", "Miami", "Chicago", "L.A."]
  activities = ["dance", "play checkers", "listen to music"]
  adjectives = ["smallest", "biggest", "ugliest", "weirdest"]
  body_parts = ["feet", "face", "hands", "nose"]

  novel = "Oh yes, now that you mention it, I do recall way back in #{years[rand(years.size-1)]}... I was living in #{places[rand(places.size-1)]} at the time and dating a man by the name of #{people[rand(people.size-1)]}. Oh it was lovely! We used to #{activities[rand(activities.size-1)]} until the cows came home. I tell you what though... He had the #{adjectives[rand(adjectives.size-1)]} #{body_parts[rand(body_parts.size-1)]}! I'm sorry, what were we talking about again?"
end

puts "OH HAI!"
s = gets.chomp

until s == "BYE"
  if !s.eql?(s.upcase)
    puts "WHAT THE H-E-DOUBLE-HOCKEY-STICKS DID YOU SAY?"
  else
    puts random_novel
  end
  s = gets.chomp
end