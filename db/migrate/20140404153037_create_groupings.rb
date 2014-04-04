class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.references :outfit
      t.references :piece
    end
  end
end
