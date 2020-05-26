class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :bike_type
      t.string :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
