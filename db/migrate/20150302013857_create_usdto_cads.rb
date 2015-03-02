class CreateUsdtoCads < ActiveRecord::Migration
  def change
    create_table :usdto_cads do |t|
      t.float :USDtoCAD
      t.float :CADtoUSD

      t.timestamps null: false
    end
  end
end
