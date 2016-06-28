class Table < ActiveRecord::Base

  def index
    @tables = Table.all
  end
end
