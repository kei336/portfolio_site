class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      flash[:success]="送信しました"
      redirect_to root_path
    else
      flash[:danger]="すべて正しく入力して下さい"
      redirect_to root_path
    end
  end
      
  private

  def contact_params
    params.permit(:name, :email, :message)
  end
end

