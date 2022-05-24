class MessageSerializer 
  include FastJsonapi::ObjectSerializer
  attributes  :id, :user, :conversation, :content
  belongs_to :user
  belongs_to :conversation
end