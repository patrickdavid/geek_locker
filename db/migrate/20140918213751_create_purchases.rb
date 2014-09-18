class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :subscription_id

      t.timestamps
    end
    create_table :subscriptions do |t|
      t.float :price
      t.string :tier

      t.timestamps
    end
  end
end
