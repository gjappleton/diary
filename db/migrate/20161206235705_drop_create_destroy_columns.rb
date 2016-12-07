class DropCreateDestroyColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :friendships, :create, :destroy
  end
end
