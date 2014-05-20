class MapController < ApplicationController
  
  def list_view 
	  @activity_list = Activity.all
	  puts @activity_list.inspect
  end 
 
  
end