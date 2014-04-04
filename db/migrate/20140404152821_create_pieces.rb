class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :type
      t.string :subtype
      t.string :color
      t.string :brand
      t.string :size
      t.date :date_purchased
      t.decimal :price
      t.string :source
      t.attachment :picture
      t.text :note
      
      t.references :location
      t.references :user
     
      t.timestamps
    end
  end
end
