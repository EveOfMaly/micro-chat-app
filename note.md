Domain Model
User - 
- Has many: Conversations
- Has many: messages

Conversation
- Belongs _to :sender -> sender_id
- Belongs to: recipient   -> recepient_id
- Has_many messages    -> has_many messages: 

Message
- Belongs to: user
- Belongs to:Conversation 
