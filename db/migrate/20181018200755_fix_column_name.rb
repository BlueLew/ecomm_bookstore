class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :sales, :stripe_change_id, :stripe_charge_id
  end
end
