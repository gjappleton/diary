class CreateFriendsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.belongs_to :user, index: true
      t.integer :user_id
      t.timestamps
    end
  end
end
