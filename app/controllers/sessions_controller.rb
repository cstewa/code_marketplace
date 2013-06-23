class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
  	@user = Developer.find_by_email(params[:email])
  	if @user.class.name == "NilClass"
    	@user = Founder.find_by_email(params[:email])
        if @user.class.name != "Founder"
          flash.now[:alert] = "Looks like you haven't signed up yet. Click Sign Up as a developer or founder to begin your journey."
          render :new
        end
  	end

  	if @user.class.name == "Founder"
    		if @user.authenticate(params[:password])
      		session[:user_name] = @user.name
      		redirect_to founder_path(@user.id), :notice => "You're logged in:)"
    		else
      		flash.now[:alert] = "Your username or password are not correct. Try again."
      		render :new
    		end
  	elsif @user.class.name == "Developer"
				if @user.authenticate(params[:password])
      		session[:user_name] = @user.name
      		redirect_to developer_path(@user.id), :notice => "You're logged in:)"
    		else
      		flash.now[:alert] = "Your username or password are not correct. Try again."
      		render :new
    		end
  	end
  end
 

  def destroy
    session[:user_name] = nil
    redirect_to root_path, :notice => "You're logged out."
  end
end
