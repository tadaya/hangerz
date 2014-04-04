class CreateWears < ActiveRecord::Migration
  def change
    create_table :wears do |t|
      t.references :piece
      t.date :date
      t.timestamps
    end
  end
end
