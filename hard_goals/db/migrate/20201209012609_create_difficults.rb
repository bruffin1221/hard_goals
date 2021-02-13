class CreateDifficults < ActiveRecord::Migration
  def change
    create_table :difficults do |t|
      t.string :name
      t.text :description
      t.text :tactic_1
      t.text :tactic_2
      t.text :tactic_3
      t.integer :heartfelt_id
      t.integer :animate_id
      t.integer :difficult_id

      t.timestamps null: false
    end
  end
end
