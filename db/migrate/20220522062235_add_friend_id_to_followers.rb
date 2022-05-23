class AddFriendIdToFollowers < ActiveRecord::Migration[5.2]
  def change
    add_column :followers, :f_id, :integer
  end
end
