class ConversationsController < ApplicationController
    def index 
        conversations = Conversation.all
        render json: conversations
    end

    def new
     conversation = Conversation.new(conversation_params)
     render json: ConversationSerializer.new(conversation)
    end

    def create
     conversation = Conversation.create(conversation_params)
     conversation.save
     render json: ConversationSerializer.new(conversation)
    end

    private

    def conversation_params
        params.require(:conversation).permit(:sender_id, :recipient_id)
    end

    
end
