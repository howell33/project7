require 'sinatra'

class MyWebApp < Sinatra::Base
		get '/' do 
			"Welcome to the webapp of DOOM, where the copyright
			is always up to date! copyright 2014-#{Time.now.year} Chris Fritz."
		end
	end