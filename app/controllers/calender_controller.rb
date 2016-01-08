class CalenderController < ApplicationController
  def show
  	@time = Time.now
  	@month = params['month'].to_i
  	@year = params['year'].to_i
  end
end
