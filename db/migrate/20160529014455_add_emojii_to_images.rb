class AddEmojiiToImages < ActiveRecord::Migration
  def change
    add_column :images, :emojii, :string
  end
end
