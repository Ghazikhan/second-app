module ApplicationHelper

	def logged_in_admin?
		current_user && User.find_by(email: "ghazi545@gmail.com") == current_user
	end
	
end
