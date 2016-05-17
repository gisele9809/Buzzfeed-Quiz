class CreateResultsTable < ActiveRecord::Migration
  def change
  	create_table :results do |t|
  		t.integer :quizz_id
  		t.integer :user_id
  		t.datetime :created_at
		t.datetime :updated_at
  	end
  end
end
