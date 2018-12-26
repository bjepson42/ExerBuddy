class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.event_paired :boolean
      t.originator_user_id :integer #how do we do naming here
      t.acceptor_user_id :integer #how do we do naming here
      t.activity_id :integer ##check pluralization on activity
      t.location_id :integer
      t.timestamps
    end
  end
end
