class CreateQuizzesTable < ActiveRecord::Migration
  def change
  	create_table :quizzes do |t|
  		t.string :title
  		t.string :questions
  		t.string :subject 
  		t.datetime :created_at
		t.datetime :updated_at
  	end
  end
end
