class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :valentin, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :reservation_at

      t.timestamps
    end
  end
end
