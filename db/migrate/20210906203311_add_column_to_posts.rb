class AddColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :published, :boolean
    add_reference :posts, :author, null: true, foreign_key: true
  end
end
