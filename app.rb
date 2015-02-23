require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do 

		@holidays = HolidApi.get(country: 'us', month: Time.new.month, year: Time.new.year)
		@old_holiday = HolidApi.get(country: 'us', month: 11, year: 1992)
		erb :index
	end
end