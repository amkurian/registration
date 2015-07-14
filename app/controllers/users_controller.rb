class UsersController < ApplicationController
load_and_authorize_resource	
def new
	@user = User.new
	@designations = Designation.all
	@role = Role.all
end
def create
	@user =User.new(user_params)
	if @user.save
	  	redirect_to @user	
	else
	    @designations = Designation.all
	    	@role = Role.all
		render new_user_path
	end
end
def show
	@user = User.find(params[:id])
end
def index
	@user = User.all
end
end
private
def user_params
	params.require(:user).permit(:first_name, :middle_name,\
		:last_name, :email, :logid, :password, :password_confirmation, \
		:employee_id, :date_of_birth, :gender, :time_zone, :designation_id, \
		:date_of_joining, :education, :comments, :work_phone)
end
