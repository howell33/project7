require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do 
		params['month'] ||= current_time.month.to_s
  		params['year'] ||= current_time.year.to_s
  		params['day'] ||= current_time.day.to_s
		@holidays = HolidApi.get(country: 'us', month: params['month'], year: params['year'], day: params['day']).flatten
		@old_holiday = HolidApi.get(country: 'us', month: 11, year: 1992).flatten
		erb :index
	end
end