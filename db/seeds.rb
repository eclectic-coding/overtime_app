100.times do |post|
  Post.create!(date: Time.zone.now, rationale: "#{post} rationale content")
end

puts "100 Posts have been created"