class ContactMailer < ActionMailer::Base
   default to: "youremail@gmail.com"
   
   def contact_email(name,email, body)
      @name = name
      @email = email
      @body = body
      mail(from:email, subject:'Contact Body Form') 
   end
end