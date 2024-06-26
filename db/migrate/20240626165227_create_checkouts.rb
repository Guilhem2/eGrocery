class CreateCheckouts < ActiveRecord::Migration[7.1]
  def change
    create_table :checkouts do |t|
      t.datetime :delivery_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
