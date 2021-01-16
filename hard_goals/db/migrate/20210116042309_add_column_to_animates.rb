class AddColumnToAnimates < ActiveRecord::Migration
  def change
    add_column :animates, :user_id, :integer
  end
end
