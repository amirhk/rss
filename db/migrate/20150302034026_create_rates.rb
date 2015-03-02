class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.float :USDtoCAD
      t.float :USDtoEUR
      t.float :USDtoIRR

      t.timestamps null: false
    end
  end
end
