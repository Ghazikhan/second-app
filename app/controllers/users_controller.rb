class UsersController < ApplicationController
	before_filter	:authenticate_user!
	before_filter :authenticate_all, only: :index
  def index
  	@user = current_user
  	@users = User.all
  end

  def new
  end

  def show
  	@user = User.find(params[:id])
  	@userinfo = Userinfo.new
  	@education = Education.new
  	@work_field = WorkField.new
  end
end
