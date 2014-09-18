class DropSubscriptionTable < ActiveRecord::Migration
  def change
    drop_table :purchases

    add_column :users, :subscription_id, :integer
  end
end
