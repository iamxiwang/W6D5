# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bob = Cat.create!(
    birth_date: "1/10/2022", color: "orange", name: "bob", sex: "M")

kevin = Cat.create!(
        birth_date: "9/12/2021", color: "white", name: "kevin", sex: "F", description: "She ease my mood")

hippo = Cat.create!(
    birth_date: "4/6/2000", color: "black", name: "hippo", sex: "M", description: "He is huge and fat")


thai = Cat.create!(
    birth_date: "1/6/2019", color: "grey", name: "Mai", sex: "F", description: "She is from Thailand")