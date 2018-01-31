class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :strain, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :score
      t.text :comment
      t.string :product_type
      t.string :token

      t.timestamps
    end
    add_index :ratings, :token, unique: true
  end
end
