require 'rubygems'
require 'sinatra' 
require 'sinatra/activerecord'

set :database, "sqlite3:mydatabase.sqlite3"

require './models/models.rb'

get '/' do
	@quizes= Quiz.all

  erb :index
end

get '/Quiz/:id' do
	@quiz= Quiz.find(params[:id].to_i)
	@questions= @quiz.questions
	erb :quiz 
end


post '/form' do
	@answers= params["1"].to_i + params["2"].to_i + params["3"].to_i 
	@quiz = Quiz.find(params[:quiz].to_i)

	@answers = @quiz.get_results(@answers)
	erb :form
end

