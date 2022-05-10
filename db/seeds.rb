# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create 3 users
user1 = User.create(username: "Bobby")
user2 = User.create(username: "Sally")
user3 = User.create(username: "Minty")


message1 = Message.create(user: user1, conversation: Conversation.create(sender: user1, recipient: user2), content: "First Message")
message2 = Message.create(user: user1, conversation: Conversation.create(sender: user1, recipient: user2), content: "Second Message")
message3 = Message.create(user_id: user1, conversation_id: Conversation.create(sender_id: user1, recipient_id: user3), content: "Third Message")
message4 = Message.create(user: user1, conversation: Conversation.create(sender: user1, recipient: user3), content: "Fourth Message")
message5 = Message.create(user: user1, conversation: Conversation.create(sender: user2, recipient: user1), content: "Reply")

