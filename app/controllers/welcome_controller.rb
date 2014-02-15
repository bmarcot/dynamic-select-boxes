class WelcomeController < ApplicationController

  def index
    @countries = Country.all
    @cities = City.where("country_id = ?", Country.first.id)
  end

  def update_cities
    @cities = City.where("country_id = ?", params[:country_id])
    respond_to do |format|
      format.js
    end
  end

end
