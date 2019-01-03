class RemoveColumnEventPairedFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :event_paired
  end
end
