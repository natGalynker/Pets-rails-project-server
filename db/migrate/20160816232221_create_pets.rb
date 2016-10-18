class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :name, null: false
      t.text :breed, null: false
      t.date :born_on, null: false
      t.text :gender,  null: false
      t.boolean :neutered, null: true, default: false
      t.boolean :feral, null: true, default: false
      t.boolean :only_pet, null: true, default: false
      t.boolean :rabes_shot, null: true, default: false
      t.boolean :declawed, null: true, default: false
      t.text :owner_name, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
