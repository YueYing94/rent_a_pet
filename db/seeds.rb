# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ben = User.create(first_name: "Ben", last_name: "Weasley", address: "Foxhole", email: "ben.weasley@gmail.com", encrypted_password: 1945478)
tommi = User.create(first_name: "Tommi", last_name: "Morse", address: "Clover Fields", email: "tommi.morse.com", encrypted_password: 7632132)
sarah = User.create(first_name: "Sarah", last_name: "Lee", address: "Abbey Road", email: "sarah.lee@yahoo.com", encrypted_password: 0231373)
matt = User.create(first_name: "Matt", last_name: "Johnson", address: "Austen Drive", email: "matt.johnson@gmail.com", encrypted_password: 3872318)
maike = User.create(first_name: "Maike", last_name: "Müller", address: "Berliner Strasse", email: "maike.mueller@gmail.com", encrypted_password: 2891312)
yue = User.create(first_name: "Yue", last_name: "van de Zand", address: "Grachtenstraat", email: "yue.vandezand@yahoo.nl", encrypted_password: 1854389)
jose = User.create(first_name: "José", last_name: "Alvarez", address: "Las ramblas", email: "josé.alvarez@gmail.com", encrypted_password: 8732763)
tolu = User.create(first_name: "Tolu", last_name: "Ola", address: "Manchester Square", email: "tolu.ola@lewagon.uk", encrypted_password: 9371231)
max = User.create(first_name: "Max", last_name: "Mercury", address: "Bermondsey Street", email: "max.mercury@gmail.com", encrypted_password: 8461634)
danielle = User.create(first_name: "Danielle", last_name: "Rochelle", address: "Rue de la vie", email: "danielle.rochelle@lewagon.fr", encrypted_password: 1346438)
anna = User.create(first_name: "Anna", last_name: "Baker", address: "Tulip Gardens", email: "anna.baker@yahoo.com", encrypted_password: 2645643)
john = User.create(first_name: "John", last_name: "Meyers", address: "Boston Road", email: "john.meyers@gmail.com", encrypted_password: 2713786)

Pet.create(name: "Howliday", species: "Dog", age: 6, available: true, user_id: john.id, pet_image: 'https://images.unsplash.com/photo-1682258576596-33db89ab1b6b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
Pet.create(name: "Broccoli", species: "Parrot", age: 3, available: true, user_id: anna.id, pet_image: 'https://images.unsplash.com/photo-1682079471326-75221097c37d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80')
Pet.create(name: "Bonnie & Ronnie", species: "Guinea pigs", age: 2, available: false, user_id: danielle.id, pet_image: 'https://images.unsplash.com/photo-1548767797-d8c844163c4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80')
Pet.create(name: "Tiger", species: "Dog", age: 3, available: false, user_id: max.id, pet_image: 'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=394&q=80')
Pet.create(name: "Samson", species: "Dog", age: 7, available: true, user_id: yue.id, pet_image: 'https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')
Pet.create(name: "Sir Meow ", species: "Cat", age: 9, available: true, user_id: jose.id, pet_image: 'https://images.unsplash.com/photo-1612126258173-85375840a9ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80')
Pet.create(name: "Julius Cheesar", species: "Mouse", age: 1, available: true, user_id: tolu.id, pet_image: 'https://images.unsplash.com/photo-1452721226468-f95fb66ebf83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDE2fHxwZXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
Pet.create(name: "Freckles", species: "Gecko", age: 4, available: true, user_id: maike.id, pet_image: 'https://images.unsplash.com/photo-1616398576767-25fecac6c9e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80')
Pet.create(name: "Bertha", species: "Goat", age: 5, available: false, user_id: matt.id, pet_image: 'https://images.unsplash.com/photo-1598191290644-a99f0560b1ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGdvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60')
Pet.create(name: "Mango", species: "Parrot", age: 2, available: true, user_id: sarah.id, pet_image: 'https://images.unsplash.com/photo-1562085482-6ef03d74758e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')
Pet.create(name: "Sherlock", species: "Cat", age: 5, available: false, user_id: tommi.id, pet_image: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1143&q=80')
Pet.create(name: "Mrs Norris", species: "Cat", age: 2, available: true, user_id: ben.id, pet_image: 'https://images.unsplash.com/photo-1618759287629-ca56b5916066?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Z2luZ2VyJTIwY2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60')
