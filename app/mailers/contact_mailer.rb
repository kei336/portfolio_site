class ContactMailer < ApplicationMailer
  
  def contact_mail(contact)
    @contact = contact
    mail(
      from: @contact.email,
      to: ENV['email'], 
      subject: 'お問い合わせ'
    )
  end
end
