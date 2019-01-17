class UsersController < ApplicationController

	# before_action :authenticate_user,{only:[:]}
	before_action :forbid_login_user,{only:[:login_form,:login]}
	def login_form
		
	end

	def login
		@user = User.find_by(email: params[:email],)
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			flash[:notice] = "ログインしました"
			redirect_to("/posts/index")
		else
			@error_message = "メールアドレスまたはパスワードが間違っています"
			@email = params[:email]
			@password = params[:password]
			render("users/login_form")
		end
	end

	def logout
		session[:user_id] = nil
		flash[:notice] = "ログアウトしました"
		redirect_to("/login")
	end
end
