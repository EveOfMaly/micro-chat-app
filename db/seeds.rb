# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # create 3 users
user1 = User.create(username: "Bobby")
user2 = User.create(username: "Sally")
user3 = User.create(username: "Minty")

con1 = Conversation.create(sender_id: user1.id, recipient_id: user2.id)
con2 = Conversation.create(sender_id: user1.id, recipient_id: user3.id)
con3 = Conversation.create(sender_id: user1.id, recipient_id: user2.id)


message1 = Message.create(user_id: user1.id, conversation_id: con1.id , content: "First Message to Sally from Bobby")
message2 = Message.create(user_id: user2.id, conversation_id: con1.id, content: "Reply from Sally to Bobby!! ")
message3 = Message.create(user_id: user1.id, conversation_id: con2.id, content: "First Message to Bobby to Minty")
message4 = Message.create(user_id: user3.id, conversation_id: con2.id, content: "Minty Reply to Bobby ")


