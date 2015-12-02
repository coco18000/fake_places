class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id, null:false
      t.integer :place_id, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps null: false
    end
  end
end
