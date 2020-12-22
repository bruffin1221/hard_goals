class UpdateRequiredsColumn < ActiveRecord::Migration
  def change
    remove_column :requireds, :animate
    add_column :requireds, :animate_id, :integer
  end
end
