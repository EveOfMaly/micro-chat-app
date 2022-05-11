class MessagesController < ApplicationController
    def index 
        messages = Message.all
        render json: messages
    end

    def new
        message = Message.new(message_params)
        render json: message
    end

    def create
        message = Message.create(message_params)
        message.save
        render json: message
    end

    private

    def message_params
        params.requre(:message).permit(:user, :conversation, :content)
    end
end
