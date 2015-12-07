class MessagesController < ApplicationController


def new
    @message = Message.new
     @user = current_user
  end

  def create
    @message = Message.new(message_params)
    
    
    if @message.valid?
      MessageMailer.message_confirmation(@message).deliver
      MessageMailer.message_backemail(@message).deliver
      redirect_to contact_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
