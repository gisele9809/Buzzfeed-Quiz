class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name
  		t.date :birthdate
  		t.string :email
  		t.string :address
  		t.integer :number
  		t.datetime :created_at
		  t.datetime :updated_at
  	end
  end
end
