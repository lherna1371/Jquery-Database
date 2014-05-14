class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
	    t.string :name 
	    t.integer :category_id	
		t.text :web 	
		t.string :phone	
		t.string :email
		t.string :address 
		t.string :city 
		t.string :state
		t.string :zip_code 
		t.text :image 	
		t.string :latitude 
		t.string :longitude
		t.string :contact_first_name
		t.string :contact_last_name
		t.string :contact_phone
		t.string :contact_email
		t.text :description 
		t.datetime :start_date_time  
		t.datetime :end_date_time 
		
		
		t.timestamps  
    end
  end
end
