# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"gamberielia@gmail.com",password:'delibird',password_confirmation:'delibird',admin:true,username:'Gimbaro')
Who.create([{content: 'Your mom'}, {content: 'Your loved one'}, {content: 'Your best friend'}])
What.create([{content: 'loves you'}, {content: 'thinks you are getting crazy'}, {content: 'wants to spend more time with you'}])
Why.create([{content: 'because you are acting weird'}, {content: 'because you are a good boy'}, {content: 'and this will never change'}])