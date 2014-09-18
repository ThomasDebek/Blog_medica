class UserMailer < ActionMailer::Base
  def welcome(user)
    mail(:to => user.email, :subject => "welcome_email", :from => "automail@activeweb.pl")
  end
end
