class StaticPagesController < ApplicationController	
  def home
  	@application_name = application_name
  end
end
