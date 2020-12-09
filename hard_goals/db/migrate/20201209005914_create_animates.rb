class CreateAnimates < ActiveRecord::Migration
  def change
    create_table :animates do |t|
      t.string :name
      t.text :description
      t.text :size
      t.text :color
      t.text :emotion
      t.text :setting
      t.text :movement
      t.text :distinct_parts
      t.integer :heartfelt_id

      t.timestamps null: false
    end
  end
end
