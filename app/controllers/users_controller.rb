class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account has been created.  Please check your email for confirmation before signing in."
      redirect_to :root_path
    else
      flash[:error] = "We were unable to create this account.  Please check your information."
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name, :city, :state, :zip_code, :gender, :about, :birthday)
  end

end