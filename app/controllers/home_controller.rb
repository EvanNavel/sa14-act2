class HomeController < ApplicationController
  include HTTParty
  base_uri 'https://v6.exchangerate-api.com/v6/20b0fc4f056e1731203e8e2d/latest'

  def index
    return unless params[:amount] && params[:source_currency] && params[:target_currency]

    response = self.class.get("/#{params[:source_currency]}")
    rate = response.parsed_response['conversion_rates'][params[:target_currency]]
    @result = params[:amount].to_f * rate
    @exchange_rate = rate
  end
end
