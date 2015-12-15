class AddUserIdToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :user_id, :integer
    add_index :shirts, :user_id
  end
end
