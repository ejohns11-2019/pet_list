class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :owner_name
      t.integer :age
      t.string :dog_name
      t.string :city

      t.timestamps
    end
  end
end
