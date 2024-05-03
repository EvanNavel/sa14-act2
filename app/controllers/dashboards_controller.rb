class DashboardsController < ApplicationController
  include HTTParty

  def show
    return unless params[:city]

    base_uri = 'http://api.weatherapi.com/v1'
    api_key = '9756ca9d262c4fe9a2435157240305'

    @current_weather = self.class.get("#{base_uri}/current.json", query: { key: api_key, q: params[:city] })
    @forecast = self.class.get("#{base_uri}/forecast.json", query: { key: api_key, q: params[:city], days: 3 })
  end
end
