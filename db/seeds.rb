# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###create test data
users = User.create([{name: "tim", email: "tim@gmail.com", password: "password", admin: nil },
                     {name: "steven", email: "steven@gmail.com", password: "password", admin: nil },
                     {name: "meryl", email: "meryl@gmail.com", password: "password", admin: nil },
                     {name: "alex", email: "alex@gmail.com", password: "password", admin: nil },
                     {name: "max", email: "max@gmail.com", password: "password", admin: nil },
                     {name: "julian", email: "julian@gmail.com", password: "password", admin: nil },
                     {name: "may", email: "may@gmail.com", password: "password", admin: nil },
                     {name: "katie", email: "katie@gmail.com", password: "password", admin: nil }])

events = Event.create([{title: "Office Christmas Party", date: Date.new(2018, 2, 3), occasion: "Christmas", price_limit: 30},
                       {title: "Office Holiday Party", date: Date.new(2018, 12, 15), occasion: "holidays", price_limit: 20},
                       {title: "Office Kwanzaa Party", date: Date.new(2018, 5, 7), occasion: "Kwanzaa", price_limit: 40},
                       {title: "Office Hanukkah Party", date: Date.new(2018, 4, 3), occasion: "Hanukkah", price_limit: 20},
                       {title: "Friendsgiving Potluck", date: Date.new(2018, 11, 5), occasion: "Thanksgiving", price_limit: 10},
                       {title: "Chinese New Year Good Luck Gifts", date: Date.new(2018, 1, 30), occasion: "Chinese New Year", price_limit: 10}])

userevents = UserEvent.create([{user_id: 1, event_id: 1}, {user_id: 2, event_id: 1}, {user_id: 2, event_id: 1},
                              {user_id: 4, event_id: 1}, {user_id: 5, event_id: 1}, {user_id: 6, event_id: 2},
                              {user_id: 7, event_id: 2}, {user_id: 8, event_id: 2}, {user_id: 1, event_id: 3},
                              {user_id: 4, event_id: 3}, {user_id: 6, event_id: 3}, {user_id: 2, event_id: 4},
                              {user_id: 3, event_id: 4}, {user_id: 4, event_id: 4}, {user_id: 8, event_id: 5},
                              {user_id: 7, event_id: 5}, {user_id: 1, event_id: 5}, {user_id: 1, event_id: 6},
                              {user_id: 2, event_id: 6}, {user_id: 3, event_id: 6}, {user_id: 7, event_id: 6}])
