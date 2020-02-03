class AuthorsController < ApplicationController

  def index
    id = params[:id]
    response = HTTParty.get("http://localhost:3000/establishments", format: :plain)
    @parsed = JSON.parse response, symbolize_names: true
    render :index
  end

  def show
    response = HTTParty.get("http://localhost:3000/establishments/#{id}", format: :plain)
    @quotes = JSON.parse response, symbolize_names: true
    render :show
  end

end
