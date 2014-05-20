class WelcomeController < ApplicationController
  def index
  
  @activity_list = Activity.all
  puts @activity_list.inspect
  	
  end
  
end