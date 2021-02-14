# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Book.destroy_all

30.times do
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        status: 1
    )
end

#poblando la databes de forma simple 
# 100.times do |t|
#     Book.create(title: "titulo - ${t}")
# end

# poblando la database con faker