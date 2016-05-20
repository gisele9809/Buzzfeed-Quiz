require 'rubygems'
require 'sinatra' 
	
	get '/' do
  		erb :form
	end
	post "/answer" do
	end

require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:mydatabase.sqlite3"

require './models/models.rb'

get '/' do

  erb :index
end

get '/Quiz/:id' do
	@quiz= Quiz.find(params[:id].to_i)
	@questions= @quiz.questions
	erb :quiz 
end


post '/form' do
@answers= params["1"].to_i + params["2"].to_i + params["3"].to_i 
	if @answers.between?(1, 4)
		return "Parents Basement"
	elsif @answers.between?(5, 7)
		return "World Traveler" 
	elsif @answers.between?(8, 10)
		return "Entrepeneur" 
	elsif @answers.between?(11, 12)
		return "CEO"
	end
	erb :form
end

