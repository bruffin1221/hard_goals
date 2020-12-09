class CreateRequiredActions < ActiveRecord::Migration
  def change
    create_table :required_actions do |t|

      t.timestamps null: false
    end
  end
end
