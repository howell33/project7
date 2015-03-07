require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do 
		params['month'] ||= Time.new.month
		params['day'] ||= Time.new.day
		params['year'] ||= Time.new.year
		@holidays = HolidApi.get(country: 'us', month: params['month'], year: params['year'], day: params['day']).flatten
		erb :index
	end
end