class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :space, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
