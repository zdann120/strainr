class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :variant
      t.integer :created_by

      t.timestamps
    end
    add_index :strains, :name, unique: true
  end
end
