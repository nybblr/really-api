class CreateRockets < ActiveRecord::Migration
  def change
    create_table :rockets do |t|
      t.string :title
      t.integer :thrusters
      t.integer :speed
      t.boolean :decommissioned

      t.timestamps
    end
  end
end
