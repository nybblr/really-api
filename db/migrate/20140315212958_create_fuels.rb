class CreateFuels < ActiveRecord::Migration
  def change
    create_table :fuels do |t|
      t.references :rocket, index: true
      t.string :name
      t.text :caveats
      t.text :formula

      t.timestamps
    end
  end
end
