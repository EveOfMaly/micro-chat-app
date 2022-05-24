class User < ApplicationRecord
    has_many :conversations
    has_many :messages
    
    has_many :received_messages, class_name: "Conversation", foreign_key: "recipient_id"
    has_many :sent_messages, class_name: "Conversation", foreign_key: "sender_id" 
end