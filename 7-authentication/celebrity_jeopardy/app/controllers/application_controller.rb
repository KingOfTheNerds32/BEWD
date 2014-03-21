class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  before_filter :set_current_contestant

  def set_current_contestant
  	@current_contestant = Contestant.find_by_id(session[:contestant_id])
  end
end
