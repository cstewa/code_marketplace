class ApplicationController < ActionController::Base
  protect_from_forgery

 def current_founder 
  if session[:user_name]
    @current_founder = Founder.find_by_name(session[:user_name]) if Founder.find_by_name(session[:user_name]) != nil
  end
 end 

 helper_method :current_founder

def current_developer
  if session[:user_name]
    @current_developer = Developer.find_by_name(session[:user_name]) if Developer.find_by_name(session[:user_name]) != nil
  end
 end 

 helper_method :current_developer

end

