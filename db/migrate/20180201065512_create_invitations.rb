class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :code
      t.datetime :expires_at
      t.integer :claimed_by
      t.boolean :claimed

      t.timestamps
    end
    add_index :invitations, :code, unique: true
  end
end
