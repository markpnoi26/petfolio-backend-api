class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :current_address
      t.string :about_me

      t.timestamps
    end
  end
end
