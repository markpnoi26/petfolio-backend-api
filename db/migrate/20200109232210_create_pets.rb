class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :animal_type
      t.string :pet_care
      t.integer :user_id

      t.timestamps
    end
  end
end
