class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.integer :user_to
      t.integer :user_from

      t.timestamps null: false
    end
  end
end
