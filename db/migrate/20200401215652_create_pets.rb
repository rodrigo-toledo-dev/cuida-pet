class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.string :race
      t.integer :pet_type

      t.timestamps
    end
  end
end
