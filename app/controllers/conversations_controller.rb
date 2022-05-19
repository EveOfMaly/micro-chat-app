class ConversationsController < ApplicationController
    def index 
        conversations = Conversation.all
        render json: ConversationSerializer.new(conversations)
    end

    def new
     conversation = Conversation.new(conversation_params)
     render json: ConversationSerializer.new(conversation)
    end

    def create
        if Conversation.between(conversation_params[:sender_id],conversation_params[:recipient_id])
            .present?
             conversation = Conversation.between(params[:sender_id],
              params[:recipient_id]).first
              render json: ConversationSerializer.new(conversation)
        else 
            conversation = Conversation.create(conversation_params)
            conversation.save 
            render json: ConversationSerializer.new(conversation)
        end
    end

    # def show
    #     conversations = Conversation.all
    #     render json: ConversationSerializer.new(conversations)
    # end

    private

    def conversation_params
        params.require(:conversation).permit(:id, :sender_id, :recipient_id)
    end

    
end
