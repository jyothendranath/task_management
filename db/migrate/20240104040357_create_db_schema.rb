class CreateDbSchema < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :url
      t.timestamps
    end
  end
end
