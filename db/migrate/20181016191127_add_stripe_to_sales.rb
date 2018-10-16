class AddStripeToSales < ActiveRecord::Migration[5.2]
  def change
    add_column(:sales, :stripe_change_id, :string)
  end
end
