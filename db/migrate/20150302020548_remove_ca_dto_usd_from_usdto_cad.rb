class RemoveCaDtoUsdFromUsdtoCad < ActiveRecord::Migration
  def change
    remove_column :usdto_cads, :CADtoUSD, :float
  end
end
