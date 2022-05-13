class ConversationSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :sender_id, :recipient_id
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
  has_many :messages
end
