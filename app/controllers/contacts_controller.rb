class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      flash[:sucess]="送信しました"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
      
  private

  def contact_params
    params.permit(:name, :email, :message)
  end
end

