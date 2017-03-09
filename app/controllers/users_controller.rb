class UsersController < ApplicationController
	before_action :require_login
	skip_before_action :require_login, only: [:new]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		binding.pry
		@user = User.new(name: params[:name])
		@user.save
		redirect_to user_path(@user)
	end

	def require_login
		return head(:forbidden) unless session.include? :user_id
	end

	private

		def user_params
			params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin)
		end


end
