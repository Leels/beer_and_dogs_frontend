class EstablishmentsController < ApplicationController

  def index
    response = HTTParty.get("http://localhost:3000/establishments", format: :plain)
    @establishments = JSON.parse response, symbolize_names: true
    render :index
  end

  def show
    id = params[:id]
    response = HTTParty.get("http://localhost:3000/establishments/#{id}", format: :plain)
    @establishment = JSON.parse response, symbolize_names: true

    response2 = HTTParty.get("http://localhost:3000/establishments/#{id}/reviews", format: :plain)
    @reviews = JSON.parse response2, symbolize_names: true
    render :show
  end

end
