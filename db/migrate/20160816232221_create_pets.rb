class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :name
      t.text :breed
      t.date :born_on
      t.text :gender
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
