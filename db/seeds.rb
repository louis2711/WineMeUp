# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
User.destroy_all

puts "data base cleaned"

puts "creating users"

toto = User.create(email: "toto@lewagon.fr", first_name: "louis", last_name: "f", password: "testtest")
toto.save!

louis = User.create(email: "louis@lewagon.fr", first_name: "louis", last_name: "f", password: "testtest")
louis.save!

stan = User.create(email: "stan@lewagon.fr", first_name: "stan", last_name: "s", password: "testtest")
stan.save!

hugues = User.create(email: "hugues@lewagon.fr", first_name: "hugues", last_name: "s", password: "testtest")
hugues.save!

jeanne = User.create(email: "jeanne@lewagon.fr", first_name: "jeanne", last_name: "l", password: "testtest")
jeanne.save!

puts "creating questions"

name_question = Question.create(content: "What's your name?", question_type: "blank", )
name_question.save!

gender_question = Question.create(content: "Are you?", question_type: "simple_choice")
gender_question.save!

age_question = Question.create(content: "How old are you?", question_type: "blank")
age_question.save!

city_question = Question.create(content: "Which city do you live in?", question_type: "blank")
city_question.save!

preference_question = Question.create(content: "Do you have a preference concerning the vineyards management?", question_type: "plural_choice")
preference_question.save!

puts "creating answers"

gender_answer_male = Answer.create(content: "Male", tag: "male", question: gender_question)
gender_answer_male.save!
gender_answer_female = Answer.create(content: "Female", tag: "female", question: gender_question)
gender_answer_female.save!
gender_answer_non_binary = Answer.create(content: "Non-binary", tag: "non_binary", question: gender_question)
gender_answer_non_binary.save!

preference_question_bio = Answer.create(content: "Bio", tag: "bio", question: preference_question)
preference_question_bio.save!
preference_question_vegan = Answer.create(content: "Vegan", tag: "vegan", question: preference_question)
preference_question_vegan.save!
preference_question_natural = Answer.create(content: "Natural", tag: "natural", question: preference_question)
preference_question_natural.save!
preference_question_no_one_cares = Answer.create(content: "No one cares", tag: "no on cares", question: preference_question)
preference_question_no_one_cares.save!

puts "All created!"
