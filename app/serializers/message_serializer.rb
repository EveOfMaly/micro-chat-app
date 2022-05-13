class MessageSerializer 
  include FastJsonapi::ObjectSerializer
  attributes  :id, :user_id, :conversation_id, :content
  belongs_to :user 
  belongs_to :conversation
end