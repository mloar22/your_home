class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :category
      t.string :make
      t.integer :year
      t.string :model
      t.integer :price
      t.text :discription
      t.string :owner
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
