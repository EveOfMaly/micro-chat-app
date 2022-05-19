class Conversation < ApplicationRecord
    belongs_to :sender, class_name: "User", foreign_key: "sender_id"
    belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
    has_many :messages

    validates_uniqueness_of :sender_id, :scope => :recipient_id

    # Here we use a scope method, between, when the create action is called, the between method checks to see if a conversation between these 2 users exists…only if one does not already exist is the conversation created. Our messages controller :

    scope :between, -> (sender_id, recipient_id) do 
        where("(conversations.sender_id = ? AND   conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender_id, recipient_id, recipient_id, sender_id)
    end
       
end
