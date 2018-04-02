class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.string :occasion
      t.integer :price_limit

      t.timestamps
    end
  end
end
