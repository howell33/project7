require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do 
		@holidays = HolidApi.get(country: 'us', month: params['month'], year: params['year'], day: params['day']).flatten
		@old_holiday = HolidApi.get(country: 'us', month: 11, year: 1992).flatten
		erb :index
	end
end