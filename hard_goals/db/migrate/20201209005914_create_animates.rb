class CreateAnimates < ActiveRecord::Migration
  def change
    create_table :animates do |t|

      t.timestamps null: false
    end
  end
end
