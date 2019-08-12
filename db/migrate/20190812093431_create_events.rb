class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_day
      t.integer :duration
      t.text :description
      t.string :title
      t.integer :price
      t.string :location
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
