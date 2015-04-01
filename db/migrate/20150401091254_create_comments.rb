class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :user_to_id
      t.integer :user_from_id

      t.timestamps null: false
    end
  end
end
