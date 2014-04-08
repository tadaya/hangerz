class AddLinkToPiece < ActiveRecord::Migration
  def change
    add_column :pieces, :link, :text
  end
end
