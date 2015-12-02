class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :password_digest, null: false
      t.string :remember_token

      t.timestamps null: false
    end
  end
end
