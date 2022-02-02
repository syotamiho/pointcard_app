class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.integer :category_id, null: false
      t.date :expiration, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
