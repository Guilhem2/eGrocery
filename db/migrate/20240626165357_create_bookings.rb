class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :checkout, null: false, foreign_key: true
      t.references :basket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
