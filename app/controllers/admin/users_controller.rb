class Admin::UsersController < ApplicationController
	load_and_authorize_resource except: [:create] 
	 
	def index
    @user = User.all
  end

	def new
		@user = User.new
		@designations = Designation.all
    @role = Role.all
	end

	def create
		@user =User.new(user_params)
		if @user.save
	  	redirect_to [:admin,@user]
		else
	    @designations = Designation.all
	    @role = Role.all
			render new_admin_user_path
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
		@designations = Designation.all
		@role = Role.all
	end

	def update
		@user = User.find(params[:id])
  	@designations = Designation.all
  	@role = Role.all
 		if @user.update( user_params)
      redirect_to [:admin,@user]
    else
    	render 'new'
    end	
	end	

	def destroy
    @user = User.find(params[:id])
    @user.destroy
 		redirect_to admin_users_path
  end
   
	private
	def user_params
		params.require(:user).permit(:first_name, :middle_name,\
		:last_name, :email, :logid, :password, :password_confirmation, \
		:employee_id, :date_of_birth, :gender, :time_zone, :designation_id, \
		:date_of_joining, :education, :comments, :work_phone, :islock, :isactive,:reason,:role_id)
	end
	
end