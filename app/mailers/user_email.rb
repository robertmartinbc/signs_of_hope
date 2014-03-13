class UserEmail < ActionMailer::Base
  default from: "robertmartinbc@gmail.com"

  def signup_notify(visitor)
  	@visitor = visitor
  	mail(:to => @visitor.email,
  		 :bcc => "robertmartinbc@gmail.com",
  		 :subject => "Thank You!",
  		 )
  end
end
