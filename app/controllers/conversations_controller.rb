class ConversationsController < ApplicationController
    def index 
        conversations = Conversation.all
        render json: ConversationSerializer.new(conversations)
    end

    def new
     conversation = Conversation.new(conversation_params)
     render json: ConversationSerializer.new(conversation)
    end


    #lets say the user of the app has id 5 and is trying to start a conversation with 
    #a user with id 6, tbe betweeb method is called. In this case 5 is the sender_id 
    #and 6 is the recipient_id. The scope method checks to see if a conversation exist
    # with 5 as the sender and 6 as the receiver but it also checks if a conversation exist
    # with 6 being sender and 5 being reciever. making sure they two users will 
    #have one conversation created

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
