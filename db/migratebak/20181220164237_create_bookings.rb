class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t| #join ta
      t.integer :acceptor_user_id #how do we do naming here
      t.integer :event_id
      t.timestamps
    end
  end
end
