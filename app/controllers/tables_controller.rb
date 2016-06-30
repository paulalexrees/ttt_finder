class TablesController < ApplicationController

  def index
    @tables = Table.all
    @hash = Gmaps4rails.build_markers(@tables) do |table, marker|
      marker.lat 51.46
      marker.lng -0.22
      marker.title table.name
    end
  end

  def new
    @table = Table.new
  end

  def create
    @table = Table.create(table_params)
    redirect_to '/tables'
  end

  def table_params
    params.require(:table).permit(:name, :postcode)
  end

end
