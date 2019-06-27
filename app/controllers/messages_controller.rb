class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def messsage_params
    params.require(:message).permit(:title, :description)
  end
end
