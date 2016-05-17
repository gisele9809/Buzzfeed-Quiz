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
  @post = Post.first
  erb :index
end

post '/form' do
  "Hello World"
end