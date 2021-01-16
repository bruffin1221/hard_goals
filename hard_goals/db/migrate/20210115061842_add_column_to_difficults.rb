class AddColumnToDifficults < ActiveRecord::Migration

  def change
    add_column :difficults, :user_id, :integer
  end
end
