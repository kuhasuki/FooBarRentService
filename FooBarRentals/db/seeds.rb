Monkey.create!(name: "Frank", birth_date: Date.new(2000,6,9), color: "Black", sex: "M", description: "Frank is the coolest monkey, obviously.")
Monkey.create!(name: "Donkey Kong", birth_date: Date.new(1980,7,6), color: "Brown", sex: "M", description: "The king of the monkeys.")
Monkey.create!(name: "King Kong", birth_date: Date.new(1930,2,1), color: "White", sex: "M", description: "Fuck off with the planes.")
Monkey.create!(name: "Coco", birth_date: Date.new(1950,12,9), color: "Silver", sex: "F", description: "I can sign language like a MF.")
Monkey.create!(name: "Lucy", birth_date: Date.new(1990,9,10), color: "Pink", sex: "F", description: "Whateva.")

MonkeyRentalRequest.create!(monkey_id: 1, start_date: Date.new(2015,11,17), end_date: Date.new(2015,11,18))
MonkeyRentalRequest.create!(monkey_id: 1, start_date: Date.new(2015,11,16), end_date: Date.new(2015,11,18))
MonkeyRentalRequest.create!(monkey_id: 2, start_date: Date.new(2015,11,17), end_date: Date.new(2015,11,18))
MonkeyRentalRequest.create!(monkey_id: 3, start_date: Date.new(2015,11,17), end_date: Date.new(2015,11,18))
MonkeyRentalRequest.create!(monkey_id: 3, start_date: Date.new(2015,11,16), end_date: Date.new(2015,11,20))
MonkeyRentalRequest.create!(monkey_id: 3, start_date: Date.new(2015,11,18), end_date: Date.new(2015,11,20))
MonkeyRentalRequest.create!(monkey_id: 3, start_date: Date.new(2015,11,19), end_date: Date.new(2015,11,20))
MonkeyRentalRequest.create!(monkey_id: 3, start_date: Date.new(2015,11,19), end_date: Date.new(2015,11,20), status: "APPROVED")
