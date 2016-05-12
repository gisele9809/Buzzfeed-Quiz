class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :name
  		t.date :birthdate
  		t.string :email
  	end
  end
end
