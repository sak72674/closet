class CodesController < ApplicationController
before_action :authenticate_user!
	def index
		@user = current_user
		@code = Code.new
		@codes = Code.all
		@users = User.all
	end

	def create
		@code = Code.new(code_params)
		@code.user_id = current_user.id
		if @code.save
           redirect_to codes_path
        else
           flash[:notice] = @code.errors.full_messages
           redirect_to codes_path
        end
	end

	def show
	end

	def edit
		@code = Code.find(params[:id])
	end

	def update
		@code = Code.find(params[:id])
		if @code.update
		   redirect_to codes_path
		else
			flash[:notice] = @code.errors.full_messages
			redirect_to edit_code_path(code.id)
	end

	def destroy
	end

	private

	def code_params
		params.require(:code).permit(:post_image, :category, :text)
	end

end
