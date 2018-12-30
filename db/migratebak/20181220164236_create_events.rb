class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.boolean :event_paired
      t.integer :originator_user_id #how do we do naming here
      t.integer :activity_id ##check pluralization on activity
      t.integer :location_id
      t.timestamps
    end
  end
end
