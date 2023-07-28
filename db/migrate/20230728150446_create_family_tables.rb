class CreateFamilyTables < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.timestamps
      t.integer :primary_user_id
    end

    create_table :family_members do |t|
      t.timestamps
      t.integer :family_id
      t.string :email, null: false
      t.boolean :family_admin_flag
      t.integer :relation
    end
  end
end
