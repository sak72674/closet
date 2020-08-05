class CodesController < ApplicationController
before_action :authenticate_user!
	def index
		@user = current_user
		@code = Code.new
		@codes = Code.all
		@users = User.all
	end

	def new
	end

	def create
		@code = Code.new(code_params)
		@code.user_id == current_user.id
		if @code.save
           redirect_to codes_path
        else
           redirect_to codes_path
        end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def code_params
		params.require(:code).permit(:post_image, :category, :user_id, :text)
	end

end
