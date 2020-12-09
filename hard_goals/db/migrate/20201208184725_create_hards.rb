class CreateHards < ActiveRecord::Migration
  def change
    create_table :hards do |t|

      t.timestamps null: false
    end
  end
end
