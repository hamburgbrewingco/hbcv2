class PagesController < ApplicationController
  def home
  	@features = Feature.last
  end

  def about
  end

end
