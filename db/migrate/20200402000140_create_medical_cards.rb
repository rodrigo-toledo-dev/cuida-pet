class CreateMedicalCards < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_cards do |t|
      t.references :pet, null: false, foreign_key: true
      t.text :symptoms
      t.text :treatment

      t.timestamps
    end
  end
end
