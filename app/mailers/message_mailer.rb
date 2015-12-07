class MessageMailer < ActionMailer::Base



	def message_confirmation(message)
		@message = message
		mail(:subject => "Message Confirmation", :to => message.email, :from => "No Reply :: Pak Apply ::")
	end

	def message_backemail(message)
		@message = message
		mail(:subject => "message.name", :from => message.email, :to => "ghazi545@gmail.com")
	end

end
