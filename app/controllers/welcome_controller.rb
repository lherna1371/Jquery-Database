class WelcomeController < ApplicationController
  def index
  
  @activity_map = []
  list = Activity.all
  list.each do |activity|
  	single_list = []
  	single_list << activity.name
  	single_list << activity.latitude
  	single_list << activity.longitude
  	@activity_map << single_list
  end 
  
  puts "######"
  puts @activity_map.inspect
  end
  
end