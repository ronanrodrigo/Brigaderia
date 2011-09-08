class ContactMailer < ActionMailer::Base
    
  def send_message(contact)
    @contact = contact
    mail(:to => "ronanchiwi@gmail.com", :subject => "Contato pelo site", :from => "ronanchiwi@gmail.com")
  end
end
