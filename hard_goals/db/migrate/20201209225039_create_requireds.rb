class CreateRequireds < ActiveRecord::Migration
  def change
    create_table :requireds do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.integer :heartfelt_id
      t.integer :animate_idS

      t.timestamps null: false
    end
  end
end
