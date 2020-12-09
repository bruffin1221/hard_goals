class CreateDifficults < ActiveRecord::Migration
  def change
    create_table :difficults do |t|

      t.timestamps null: false
    end
  end
end
