class SessionsController < ApplicationController

	def new
	end

	def create
		binding.pry
		user = User.find_by(name: params[:user][:name])
		# if user && user.authenticate(params)
		# if params[:username] &
		# redirect_to signin_path
	end

	def destroy
		session.destroy[:username]
	end






end