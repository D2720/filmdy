class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:profile]

  def profile
  	@user = current_user
  end

  def index
  	# @users = User.all
  	# mails = @users.map(&:email)
   #  render component: 'Users', props: { mails: mails }
  end

  private
end
