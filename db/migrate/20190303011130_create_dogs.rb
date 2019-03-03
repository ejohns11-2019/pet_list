class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.text :dog_name
      t.text :breed
      t.boolean :alive
      t.belongs_to :owner, foreign_key: true

      t.timestamps
    end
  end
end
