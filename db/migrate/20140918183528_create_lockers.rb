class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.string :name
    end
  end
end
