class ChangeDifficultsColumn < ActiveRecord::Migration
  def change
    remove_column :difficults, :difficult_id
    add_column :difficults, :required_id, :integer
  end
end
