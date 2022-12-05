class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.belongs_to :user
      t.string :name
      t.integer :price
      t.string :imageurl
      t.string :description

      t.timestamps
    end
  end
end
