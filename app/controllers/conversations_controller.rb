class ConversationsController < ApplicationController
    def index 
        conversations = Conversation.all
        render json: conversations
    end

    def new
     conversation = Conversation.new(conversation_params)
     render json: conversation
    end

    def create
     conversation = Conversation.create(conversation_params)
     conversation.save
     render json: conversation
    end

    private

    def conversation_params
        params.requre(:conversation).permit(:sender, :recipient)
    end

    
end
