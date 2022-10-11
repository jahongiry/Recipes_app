class CreateInventoris < ActiveRecord::Migration[7.0]
  def change
    create_table :inventoris do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
