class CreateHeartfelts < ActiveRecord::Migration
  def change
    create_table :heartfelts do |t|

      t.string :name
      t.text :description
      t.text :enjoyments
      t.text :benefits
      t.text :rewards
      

      t.timestamps null: false
    end
  end
end
