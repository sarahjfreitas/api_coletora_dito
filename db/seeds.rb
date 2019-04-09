100.times do 
  Event.create(name: Faker::Name.name, timestamp: Faker::Date.backward(2000) )
end