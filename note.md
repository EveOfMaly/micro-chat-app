<!-- https://share.vidyard.com/watch/xLWD1XRtfmjgZiivQc1ZXT? -->

Domain Model

A user will have many conversations and a conversation will have many messages.

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
