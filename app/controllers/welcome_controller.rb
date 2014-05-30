class WelcomeController < ApplicationController
  def index
  if params[:strID].present?
  	  puts "they are present"
  	  puts params[:strID].inspect
  	  @list = []
  	  params[:strID].each do |x|
  	  	n = Activity.where(:category_id => x.to_i) 
  	  	if n.empty? == false
  	  		@list << n.to_a
  	  	end
  	  end 
  	  @activity_map = []
  	  @list.each do |activity|
	  	single_list = []
	  	puts "%%%%"
	  	puts activity.inspect
	  	puts "%%%%%"
	  	single_list << activity.first.name
	  	single_list << activity.first.latitude
	  	single_list << activity.first.longitude
	  	single_list << activity.first.category_id
	  	single_list << activity.first.description
	  	single_list << activity.first.image
	  	@activity_map << single_list
	  end 
	  
	  respond_to do |format|
		  format.json { render :json => @activity_map }
	  end

  else 
	  @activity_map = []
	  list = Activity.all
	  list.each do |activity|
	  	single_list = []
	  	single_list << activity.name
	  	single_list << activity.latitude
	  	single_list << activity.longitude
	  	single_list << activity.category_id
	  	single_list << activity.description
	  	single_list << activity.image
	  	@activity_map << single_list
	  end 
  end
 
  @categories = Category.all
  end
  
end



# class WelcomeController < ApplicationController
#   def index
# 	  @activity_map = []
# 	  list = Activity.all
# 	  list.each do |activity|
# 	  	  single_list = []
# 	  	  single_list << activity.name
# 	  	  single_list << activity.latitude
# 	  	  single_list << activity.longitude
# 	  	  single_list << activity.category_id
# 	  	  single_list << activity.description
# 	  	  single_list << activity.image
# 	  	  @activity_map << single_list
#   	  end
# 
#  
# 	  @categories = Category.all
#   end
#   
# end