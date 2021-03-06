class SessionsController < ApplicationController
  def new
  end

  def create
  	member = Member.authenticate(params[:email], params[:password])
  	if member
  		session[:member_id] = member.id
  		redirect_to root_url, :notice => "Logged in"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end
  end

  def destroy
  	session[:member_id] = nil
  	redirect_to root_url, :notice => "Logged out"
  end
end
