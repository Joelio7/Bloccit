class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
<<<<<<< HEAD
      create_session(@user)
=======
      #create_session(@user)
>>>>>>> user_sign_up_hw
      redirect_to root_path
    else
      flash[:error] = "There was an error creating your account. Please try again."
      render :new
    end
  end
<<<<<<< HEAD
end 
=======

  def confirm
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

  end

end
>>>>>>> user_sign_up_hw
