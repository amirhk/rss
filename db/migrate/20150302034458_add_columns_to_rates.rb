class AddColumnsToRates < ActiveRecord::Migration
  def change
    add_column :users, :notify_usd_to_eur, :boolean
    add_column :users, :notify_usd_to_irr, :boolean
  end
end
