class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :uid_fb
	  t.string :email
      t.string :email_fb
      t.string :name_fb
      t.string :first_name_fb
      t.string :last_name_fb
      t.string :gender_fb
      t.string :image_url_fb
      t.string :oauth_token_fb
      t.string :zipcode
      t.string :phone
      t.boolean :is_active, default: true
      
      t.timestamps
    end
  end
end
