class CreateBaskets < ActiveRecord::Migration[7.1]
  def change
    create_table :baskets do |t|
      t.string :name
      t.string :content
      t.integer :price
      t.references :grocery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
