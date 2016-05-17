class CreateQuestionsTable < ActiveRecord::Migration
  def change
  		create_table :questions do |t|
  			t.string :title
  			t.integer :quiz_id
  	end
  end
end
