class CreateShelters < ActiveRecord::Migration[7.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :rank
      t.boolean :foster_program

      t.timestamps
    end
  end
end
