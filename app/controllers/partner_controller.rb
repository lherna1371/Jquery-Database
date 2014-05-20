class PartnerController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  
  def index
  	
  end
  
  def show
  
  end
  
  def create_activity 
  
  end 
  
  def login
  
  end 
  
  def create_activity_new
  	Activity.create(name: params[:activity_name], category_id: params[:category].to_i, web: params[:web_address], phone: params[:phone], email: params[:email], address: params[:address], city: params[:city], state: params[:state], zip_code: params[:zip], latitude: params[:latitude], longitude: params[:longitude], contact_first_name: params[:first_name], contact_last_name: params[:last_name], description: params[:description], start_date_time: params[:start_time], end_date_time: params[:end_time])
  	
  	redirect_to :user_profile
  end 
  
  
end