class CreateTransacs < ActiveRecord::Migration[5.2]
  def change
    create_table :transacs do |t|
      t.string :name
      t.date :date
      t.string :item
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
