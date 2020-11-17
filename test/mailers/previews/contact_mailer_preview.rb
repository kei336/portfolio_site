# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact
    contact= Contact.new(name:"テスト", email:"test@example.com",message: "お問い合わせフォームテスト")
    ContactMailer.send_mail(contact)
  end
end
