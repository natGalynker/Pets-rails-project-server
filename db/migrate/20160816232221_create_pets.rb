class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.date :born_on

      t.timestamps null: false
    end
  end
end
