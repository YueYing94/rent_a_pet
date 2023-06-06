# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
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
pet = Pet.new(name: "Howliday", species: "Dog", age: 6, available: true)
pet.photo.attach(io: file, filename: "Howliday.png", content_type: "image/png")
pet.user = john
pet.save!
# Pet.create(name: "Broccoli", species: "Parrot", age: 3, available: true, user_id: anna.id, pet_image: 'https://images.unsplash.com/photo-1682079471326-75221097c37d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80')
file = URI.open("https://images.unsplash.com/photo-1567113859810-1a93e49fb68a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z3JlZW4lMjBwYXJyb3QlMjBwZXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
pet = Pet.new(name: "Broccoli", species: "Parrot", age: 3, available: true)
pet.photo.attach(io: file, filename: "Broccoli.png", content_type: "image/png")
pet.user = anna
pet.save!
# Pet.create(name: "Bonnie & Ronnie", species: "Guinea pigs", age: 2, available: false, user_id: danielle.id, pet_image: 'https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80')
file = URI.open("https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80")
pet = Pet.new(name: "Bonnie & Ronnie", species: "Guinea pigs", age: 2, available: false)
pet.photo.attach(io: file, filename: "Bonnie & Ronnie.png", content_type: "image/png")
pet.user = danielle
pet.save!
# Pet.create(name: "Tiger", species: "Dog", age: 3, available: false, user_id: max.id, pet_image: 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80')
file = URI.open("https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80")
pet = Pet.new(name: "Tiger", species: "Dog", age: 3, available: false)
pet.photo.attach(io: file, filename: "Tiger.png", content_type: "image/png")
pet.user = max
pet.save!
# Pet.create(name: "Samson", species: "Dog", age: 7, available: true, user_id: yue.id, pet_image: 'https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')
file = URI.open("https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
pet = Pet.new(name: "Samson", species: "Dog", age: 7, available: true)
pet.photo.attach(io: file, filename: "Samson.png", content_type: "image/png")
pet.user = yue
pet.save!
# Pet.create(name: "Sir Meow ", species: "Cat", age: 9, available: true, user_id: jose.id, pet_image: 'https://images.unsplash.com/photo-1612126258173-85375840a9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80')
file = URI.open("https://images.unsplash.com/photo-1612126258173-85375840a9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80")
pet = Pet.new(name: "Captain Meow", species: "Cat", age: 9, available: true)
pet.photo.attach(io: file, filename: "CaptainMeow.png", content_type: "image/png")
pet.user = jose
pet.save!
# Pet.create(name: "Julius Cheesar", species: "Mouse", age: 1, available: true, user_id: tolu.id, pet_image: 'https://images.unsplash.com/photo-1452721226468-f95fb66ebf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDE2fHxwZXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1452721226468-f95fb66ebf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDE2fHxwZXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
pet = Pet.new(name: "Julius Cheesar", species: "Mouse", age: 1, available: true)
pet.photo.attach(io: file, filename: "JuliusCheesar.png", content_type: "image/png")
pet.user = tolu
pet.save!
# Pet.create(name: "Freckles", species: "Gecko", age: 4, available: true, user_id: maike.id, pet_image: 'https://images.unsplash.com/photo-1616398576767-25fecac6c9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80')
file = URI.open("https://images.unsplash.com/photo-1616398576767-25fecac6c9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80")
pet = Pet.new(name: "Freckles", species: "Gecko", age: 4, available: true)
pet.photo.attach(io: file, filename: "Freckles.png", content_type: "image/png")
pet.user = maike
pet.save!
# Pet.create(name: "Bertha", species: "Goat", age: 5, available: false, user_id: matt.id, pet_image: 'https://images.unsplash.com/photo-1598191290644-a99f0560b1ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGdvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1598191290644-a99f0560b1ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGdvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
pet = Pet.new(name: "Bertha", species: "Goat", age: 5, available: false)
pet.photo.attach(io: file, filename: "Bertha.png", content_type: "image/png")
pet.user = matt
pet.save!
# Pet.create(name: "Mango", species: "Parrot", age: 2, available: true, user_id: sarah.id, pet_image: 'https://images.unsplash.com/photo-1562085482-6ef03d74758e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
file = URI.open("https://images.unsplash.com/photo-1562085482-6ef03d74758e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
pet = Pet.new(name: "Mango", species: "Parrot", age: 2, available: true)
pet.photo.attach(io: file, filename: "Mango.png", content_type: "image/png")
pet.user = sarah
pet.save!
# Pet.create(name: "Sherlock", species: "Cat", age: 5, available: false, user_id: tommi.id, pet_image: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1143&q=80')
file = URI.open("https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1143&q=80")
pet = Pet.new(name: "Sherlock", species: "Cat", age: 5, available: false)
pet.photo.attach(io: file, filename: "Sherlock.png", content_type: "image/png")
pet.user = tommi
pet.save!
# Pet.create(name: "Mrs Norris", species: "Cat", age: 2, available: true, user_id: ben.id, pet_image: 'https://images.unsplash.com/photo-1618759287629-ca56b5916066?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z2luZ2VyJTIwY2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
file = URI.open("https://images.unsplash.com/photo-1618759287629-ca56b5916066?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z2luZ2VyJTIwY2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
pet = Pet.new(name: "Mrs Norris", species: "Cat", age: 2, available: true)
pet.photo.attach(io: file, filename: "MrsNorris.png", content_type: "image/png")
pet.user = ben
pet.save!
