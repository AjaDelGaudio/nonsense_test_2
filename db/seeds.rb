# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(number: 1, text: "What is question 1?", multiple_choice: true)
Question.create(number: 2, text: "What is question 2?", multiple_choice: false)
Question.create(number: 3, text: "What is question 3?", multiple_choice: true)
