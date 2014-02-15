class WelcomeController < ApplicationController
  def index
    @countries = Country.all
    @cities = City.all
  end
end
