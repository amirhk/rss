class AddColumnsToRates < ActiveRecord::Migration
  def change
    add_column :users, :notify_usd_to_eur, :float
    add_column :users, :notify_usd_to_irr, :float
  end
end
