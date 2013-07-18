class MessagesController < ApplicationController
  respond_to :html

  def index
  end

  def create
    message = Message.new(params[:contact_form])
    if message.deliver
      redirect_to root_path, :notice => 'El email ha sido enviado.'
    else
      redirect_to root_path, :notice => 'El email no pudo ser enviado.'
    end
  end

end