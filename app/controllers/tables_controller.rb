class TablesController < ApplicationController

  def index
    @tables = Table.all
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
