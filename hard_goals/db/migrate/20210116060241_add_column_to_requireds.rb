class AddColumnToRequireds < ActiveRecord::Migration
  def change
    add_column :requireds, :user_id, :integer
  end
end
