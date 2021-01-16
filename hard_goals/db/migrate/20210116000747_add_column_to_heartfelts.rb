class AddColumnToHeartfelts < ActiveRecord::Migration

  def change
    add_column :heartfelts, :user_id, :integer
  end

end
