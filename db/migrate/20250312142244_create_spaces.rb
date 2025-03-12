class CreateSpaces < ActiveRecord::Migration[7.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
