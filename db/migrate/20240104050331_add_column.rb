class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :category_id, :integer
  end
end
