class CreateNeighbourhoods < ActiveRecord::Migration
  def change
    create_table :neighbourhoods do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
