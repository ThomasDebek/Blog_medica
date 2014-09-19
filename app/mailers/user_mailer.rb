class UserMailer < ActionMailer::Base
  def welcome(user)
    mail(:to => user.email, :subject => "Registered", :from => "automail@activeweb.pl")
  end
end
