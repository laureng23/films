module ApplicationHelper
		def signed_in?
			if session[:user_id].nil? #there is no logged in user if true
				return 	#this is like a break statement in java
			else 
			@current_user = User.find_by_id(session[:user_id])
				#note no return statement even tho this is a boolean
				#ruby returns the last object in the method
		end
	end
end
