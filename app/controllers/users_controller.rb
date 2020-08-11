class UsersController < ApplicationController
before_action :authenticate_user!
	def show
		@user = current_user
		@codes = @user.codes.all
	end

	def edit
	end

	def update
	end
end
