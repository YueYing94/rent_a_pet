# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
PetReview.destroy_all
Booking.destroy_all
Pet.destroy_all
User.destroy_all

ben = User.create!(first_name: "Ben", last_name: "Weasley", address: "Foxhole, Wessex, England", email: "ben.weasley@gmail.com", encrypted_password: 1945478, password: 1945478)
tommi = User.create!(first_name: "Tommi", last_name: "Morse", address: "Clover Fields, Street, England", email: "tommi.morse@yahoo.com", encrypted_password: 7632132, password: 7632132)
sarah = User.create!(first_name: "Sarah", last_name: "Lee", address: "Abbey Road, London, England", email: "sarah.lee@yahoo.com", encrypted_password: 1231373, password: 1231373)
matt = User.create!(first_name: "Matt", last_name: "Johnson", address: "Austen Drive, Bath, England", email: "matt.johnson@gmail.com",  encrypted_password: 3872318, password: 3872318)
maike = User.create!(first_name: "Maike", last_name: "Müller", address: "Berliner Strasse, Berlin, Germany", email: "maike.mueller@gmail.com", encrypted_password: 2891312, password: 2891312)
yue = User.create!(first_name: "Yue", last_name: "van de Zand", address: "Grachtenstraat, Amsterdam, Netherlands", email: "yue.vandezand@yahoo.nl", encrypted_password: 1854389, password: 1854389)
jose = User.create!(first_name: "José", last_name: "Alvarez", address: "Las ramblas, Lissabon, Portugal", email: "josé.alvarez@gmail.com", encrypted_password: 8732763, password: 8732763)
tolu = User.create!(first_name: "Tolu", last_name: "Ola", address: "Manchester Square, Manchester, England", email: "tolu.ola@lewagon.uk", encrypted_password: 9371231, password: 9371231)
max = User.create!(first_name: "Max", last_name: "Mercury", address: "Bermondsey Street, London, England ", email: "max.mercury@gmail.com", encrypted_password: 8461634, password: 8461634)
danielle = User.create!(first_name: "Danielle", last_name: "Rochelle", address: "Rue de la vie, Paris, France", email: "danielle.rochelle@lewagon.fr", encrypted_password: 1346438, password: 1346438)
anna = User.create!(first_name: "Anna", last_name: "Baker", address: "Tulip Gardens, Edinborough", email: "anna.baker@yahoo.com", encrypted_password: 2645643, password: 2645643)
john = User.create!(first_name: "John", last_name: "Meyers", address: "Boston Road, New York, USA", email: "john.meyers@yahoo.com", encrypted_password: 2713786, password: 2713786)

# Pet.create(name: "Howliday", species: "Dog", age: 6, available: true, user_id: john.id, pet_image: 'https://images.unsplash.com/photo-1682258576596-33db89ab1b6b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')

file = URI.open("https://images.unsplash.com/photo-1682258576596-33db89ab1b6b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
howliday = Pet.new(name: "Howliday", species: "Dog", age: 6, available: true, description: "Howliday is a natural-born athlete, always ready for a game of fetch or a challenging agility course. Her agility and training skills never cease to amaze me. ")
howliday.photo.attach(io: file, filename: "Howliday.png", content_type: "image/png")
howliday.user = john
howliday.save!
# Pet.create(name: "Broccoli", species: "Parrot", age: 3, available: true, user_id: anna.id, pet_image: 'https://images.unsplash.com/photo-1682079471326-75221097c37d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80')

file = URI.open("https://images.unsplash.com/photo-1567113859810-1a93e49fb68a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z3JlZW4lMjBwYXJyb3QlMjBwZXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
broccoli = Pet.new(name: "Broccoli", species: "Parrot", age: 3, available: true, description: "My vibrant and charismatic parrot, is a feathered marvel that adds a burst of color and personality to our home. With his beautiful plumage of vibrant greens, yellows, and blues, he is a true spectacle to behold")
broccoli.photo.attach(io: file, filename: "Broccoli.png", content_type: "image/png")
broccoli.user = anna
broccoli.save!
# Pet.create(name: "Bonnie & Ronnie", species: "Guinea pigs", age: 2, available: false, user_id: danielle.id, pet_image: 'https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80')
file = URI.open("https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80")
bonnie = Pet.new(name: "Bonnie & Ronnie", species: "Guinea pigs", age: 2, available: false, description: "Bonnie & Ronnie, with their short and smooth fur, have a curious and outgoing personality. They always the first to approach, eagerly sniffing out treats and investigating new toys.")
bonnie.photo.attach(io: file, filename: "Bonnie & Ronnie.png", content_type: "image/png")
bonnie.user = danielle
bonnie.save!
# Pet.create(name: "Tiger", species: "Dog", age: 3, available: false, user_id: max.id, pet_image: 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80')
file = URI.open("https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80")
tiger = Pet.new(name: "Tiger", species: "Dog", age: 3, available: false, description: "He's incredibly intelligent and thrives on learning new tricks and commands. Tiger's loyalty knows no bounds, and he's always by my side, showering me with unconditional love and unwavering devotion.")
tiger.photo.attach(io: file, filename: "Tiger.png", content_type: "image/png")
tiger.user = max
tiger.save!
# Pet.create(name: "Samson", species: "Dog", age: 7, available: true, user_id: yue.id, pet_image: 'https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')
file = URI.open("https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
samson = Pet.new(name: "Samson", species: "Dog", age: 7, available: true, description: "Meet Samson: Samson is my energetic and playful long haired poodle . With her caramel coat and wagging tail, she brings a burst of energy and happiness wherever she goes. ")
samson.photo.attach(io: file, filename: "Samson.png", content_type: "image/png")
samson.user = yue
samson.save!
# Pet.create(name: "Sir Meow ", species: "Cat", age: 9, available: true, user_id: jose.id, pet_image: 'https://images.unsplash.com/photo-1612126258173-85375840a9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80')
file = URI.open("https://images.unsplash.com/photo-1612126258173-85375840a9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80")
meow = Pet.new(name: "Captain Meow", species: "Cat", age: 9, available: true, description: "Captain, my gentle and affectionate Ragdoll cat, is the epitome of tranquility. With his soft, fluffy fur and striking blue eyes, he exudes an air of elegance and grace.")
meow.photo.attach(io: file, filename: "CaptainMeow.png", content_type: "image/png")
meow.user = jose
meow.save!
# Pet.create(name: "Julius Cheesar", species: "Mouse", age: 1, available: true, user_id: tolu.id, pet_image: 'https://images.unsplash.com/photo-1452721226468-f95fb66ebf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDE2fHxwZXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1452721226468-f95fb66ebf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDE2fHxwZXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
julius = Pet.new(name: "Julius Cheesar", species: "Mouse", age: 1, available: true, description: "Julius, my mischievous and curious grey mouse, is a bundle of entertainment. He's always on the go, exploring every nook and cranny of the house with endless curiosity. ")
julius.photo.attach(io: file, filename: "JuliusCheesar.png", content_type: "image/png")
julius.user = tolu
julius.save!
# Pet.create(name: "Freckles", species: "Gecko", age: 4, available: true, user_id: maike.id, pet_image: 'https://images.unsplash.com/photo-1616398576767-25fecac6c9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80')
file = URI.open("https://images.unsplash.com/photo-1616398576767-25fecac6c9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80")
freckles = Pet.new(name: "Freckles", species: "Gecko", age: 4, available: true, description: "With his mesmerizing patterned skin and big, expressive eyes, he never fails to captivate anyone who meets him. Freckles spends his days basking under the warmth of his terrarium lamp, soaking up the perfect amount of heat for his cold-blooded nature.")
freckles.photo.attach(io: file, filename: "Freckles.png", content_type: "image/png")
freckles.user = maike
freckles.save!
# Pet.create(name: "Bertha", species: "Goat", age: 5, available: false, user_id: matt.id, pet_image: 'https://images.unsplash.com/photo-1598191290644-a99f0560b1ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGdvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1598191290644-a99f0560b1ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGdvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
bertha = Pet.new(name: "Bertha", species: "Goat", age: 5, available: false, description: "Her playful nature is contagious, as she enjoys frolicking in open fields and engaging in friendly head-butting matches with her fellow goat companions. ")
bertha.photo.attach(io: file, filename: "Bertha.png", content_type: "image/png")
bertha.user = matt
bertha.save!
# Pet.create(name: "Mango", species: "Parrot", age: 2, available: true, user_id: sarah.id, pet_image: 'https://images.unsplash.com/photo-1562085482-6ef03d74758e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
file = URI.open("https://images.unsplash.com/photo-1562085482-6ef03d74758e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
mango = Pet.new(name: "Mango", species: "Parrot", age: 2, available: true, description: "Mango's remarkable ability to mimic human speech and sounds never ceases to amaze. From imitating the sound of a ringing phone to echoing our laughter, she adds a touch of playful humor to our everyday lives")
mango.photo.attach(io: file, filename: "Mango.png", content_type: "image/png")
mango.user = sarah
mango.save!
# Pet.create(name: "Sherlock", species: "Cat", age: 5, available: false, user_id: tommi.id, pet_image: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1143&q=80')
file = URI.open("https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1143&q=80")
sherlock = Pet.new(name: "Sherlock", species: "Cat", age: 5, available: false, description: "In the quiet moments, he seeks out my lap for gentle strokes and purrs of contentment. Sherlock's presence brings a sense of tranquility and elegance to our home, reminding us of the beauty found in the company of cats.")
sherlock.photo.attach(io: file, filename: "Sherlock.png", content_type: "image/png")
sherlock.user = tommi
sherlock.save!
# Pet.create(name: "Mrs Norris", species: "Cat", age: 2, available: true, user_id: ben.id, pet_image: 'https://images.unsplash.com/photo-1618759287629-ca56b5916066?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z2luZ2VyJTIwY2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1618759287629-ca56b5916066?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z2luZ2VyJTIwY2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
norris = Pet.new(name: "Mrs Norris", species: "Cat", age: 2, available: true, description: "Norris's playful antics and affectionate nature make her an irreplaceable member of our family, brightening our days with her charm and boundless energy.")
norris.photo.attach(io: file, filename: "MrsNorris.png", content_type: "image/png")
norris.user = ben
norris.save!


review_one = PetReview.new(content: "I'm glad I had a good time", rating:4)
review_one.user = tommi
review_one.pet = howliday
review_one.save

review_two = PetReview.new(content: "Soo much fun!!!", rating:5)
review_two.user = tommi
review_two.pet = broccoli
review_two.save

review_three = PetReview.new(content: "They are cute but not interactive", rating:3)
review_three.user = tommi
review_three.pet = bonnie
review_three.save

review_four = PetReview.new(content: "We had a great day out together", rating:5)
review_four.user = tommi
review_four.pet = tiger
review_four.save

review_five = PetReview.new(content: "We played together the whole day", rating:4)
review_five.user = tommi
review_five.pet = samson
review_five.save

review_six = PetReview.new(content: "So cuddly", rating:5)
review_six.user = tommi
review_six.pet = meow
review_six.save

review_seven = PetReview.new(content: "We had fun!", rating:4)
review_seven.user = maike
review_seven.pet = julius
review_seven.save

review_eight = PetReview.new(content: "I'm not so sure if we get along", rating:3)
review_eight.user = tommi
review_eight.pet = freckles
review_eight.save

review_nine = PetReview.new(content: "I was busy so couldn't spend much time playing with her", rating:3)
review_nine.user = maike
review_nine.pet = bertha
review_nine.save

review_ten = PetReview.new(content: "Great time", rating:4)
review_ten.user = maike
review_ten.pet = mango
review_ten.save

review_eleven = PetReview.new(content: "Great experience, will do again soon!", rating:5)
review_eleven.user = maike
review_eleven.pet = sherlock
review_eleven.save

review_twelve = PetReview.new(content: "nice experience", rating:4)
review_twelve.user = maike
review_twelve.pet = norris
review_twelve.save




review_one = PetReview.new(content: "Amazing experience!!!", rating:5)
review_one.user = tolu
review_one.pet = howliday
review_one.save

review_two = PetReview.new(content: "I had a very good time", rating:4)
review_two.user = sarah
review_two.pet = broccoli
review_two.save

review_three = PetReview.new(content: "It's nauty but we managed", rating:2)
review_three.user = sarah
review_three.pet = bonnie
review_three.save

review_four = PetReview.new(content: "Can't describe how we love each other's company", rating:5)
review_four.user = sarah
review_four.pet = tiger
review_four.save

review_five = PetReview.new(content: "It was okay, could be better", rating:3)
review_five.user = sarah
review_five.pet = samson
review_five.save

review_six = PetReview.new(content: "I would like to rent again for sure", rating:4)
review_six.user = john
review_six.pet = meow
review_six.save

review_seven = PetReview.new(content: "Fantastic time!", rating:5)
review_seven.user = john
review_seven.pet = julius
review_seven.save

review_eight = PetReview.new(content: "I'm disappointed, the owner didn't show up", rating:1)
review_eight.user = john
review_eight.pet = freckles
review_eight.save

review_nine = PetReview.new(content: "Such a great weekend together!", rating:5)
review_nine.user = john
review_nine.pet = bertha
review_nine.save

review_ten = PetReview.new(content: "I will miss you! Hope to see you again", rating:5)
review_ten.user = john
review_ten.pet = mango
review_ten.save

review_eleven = PetReview.new(content: "The location is far. Besides the experiene is good", rating:4)
review_eleven.user = john
review_eleven.pet = sherlock
review_eleven.save

review_twelve = PetReview.new(content: "Well it was an okay experience", rating:3)
review_twelve.user = john
review_twelve.pet = norris
review_twelve.save





review_one = PetReview.new(content: "We played lots games together", rating:4)
review_one.user = tolu
review_one.pet = howliday
review_one.save

review_two = PetReview.new(content: "He's so intellegent!", rating:5)
review_two.user = tolu
review_two.pet = broccoli
review_two.save

review_three = PetReview.new(content: "They are so cute", rating:5)
review_three.user = tolu
review_three.pet = bonnie
review_three.save

review_four = PetReview.new(content: "Such a happy creature, made my day", rating:5)
review_four.user = tolu
review_four.pet = tiger
review_four.save

review_five = PetReview.new(content: "My family loves him!", rating:5)
review_five.user = tolu
review_five.pet = samson
review_five.save

review_six = PetReview.new(content: "She's a bit scared of new environment unfortunately", rating:3)
review_six.user = tolu
review_six.pet = meow
review_six.save

review_seven = PetReview.new(content: "He's so much fun to play with", rating:5)
review_seven.user = ben
review_seven.pet = julius
review_seven.save

review_eight = PetReview.new(content: "He almost attacked me!", rating:2)
review_eight.user = ben
review_eight.pet = freckles
review_eight.save

review_nine = PetReview.new(content: "Very family friendly", rating:4)
review_nine.user = ben
review_nine.pet = bertha
review_nine.save

review_ten = PetReview.new(content: "She can mimic me talking! So funny", rating:4)
review_ten.user = ben
review_ten.pet = mango
review_ten.save

review_eleven = PetReview.new(content: "Smart like Serlick", rating:4)
review_eleven.user = ben
review_eleven.pet = sherlock
review_eleven.save
