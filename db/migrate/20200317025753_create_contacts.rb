class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.string :address
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
