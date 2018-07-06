# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all
  
  users = User.create!([{ username: 'b0b'}, {username: 'j0hN'}, {username: 'K3N'}])

  p1 = Poll.create!( author_id: 1, title: "Favorite Candy")
  q1 = Question.create!( text: "What is your favorite candy?", poll: p1)
  ac1 = AnswerChoice.create!( body: "Sucker", question: q1)
  ac2 = AnswerChoice.create!( body: "Jolly Rancher", question: q1)
  ac3 = AnswerChoice.create!( body: "Starburst", question: q1)
  
  p2 = Poll.create!( author_id: 2, title: "Favorite Drink")
  q2 = Question.create!( text: "What is your favorite drink?", poll: p2)
  ac4 = AnswerChoice.create!( body: "Radler", question: q2)
  ac5 = AnswerChoice.create!( body: "Sprite", question: q2)
  ac6 = AnswerChoice.create!( body: "Coke", question: q2)
  
  p3 = Poll.create!( author_id: 1, title: "Favorite City")
  q3 = Question.create!( text: "What is your favorite city?", poll: p3)
  ac7 = AnswerChoice.create!( body: "San Francisco", question: q3)
  ac8 = AnswerChoice.create!( body: "Berlin", question: q3)
  ac9 = AnswerChoice.create!( body: "Cape Town", question: q3)



  r1 = Response.create!( respondent: User.first, answer_choice: ac1)
  r2 = Response.create!( respondent: User.first, answer_choice: ac5)
  r3 = Response.create!( respondent: User.third, answer_choice: ac5)
  r4 = Response.create!( respondent: User.second, answer_choice: ac9)
  r5 = Response.create!( respondent: User.third, answer_choice: ac7)
  r6 = Response.create!( respondent: User.first, answer_choice: ac8)
end