class TablesController < ApplicationController

  def index
    @tables = Table.all
    @nearby_tables = Table.near("30 Deptford Church Road, Deptford", 10, units: :km)
    @hash = Gmaps4rails.build_markers(@nearby_tables) do |table, marker|
      marker.lat table.latitude
      marker.lng table.longitude
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
    params.require(:table).permit(:name, :address)
  end

end
