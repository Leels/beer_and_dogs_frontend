class HomeController < ApplicationController

  def index
    response = HTTParty.get('http://localhost:3000/home', format: :plain)
    @parsed = JSON.parse response, symbolize_names: true
    render :index
  end

end
