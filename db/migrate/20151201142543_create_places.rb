class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.int :user_id, null:false
      t.string :name, null: false
      t.float :longitude, null: false
      t.float :latitude, null: false

      t.timestamps null: false
    end
  end
end
