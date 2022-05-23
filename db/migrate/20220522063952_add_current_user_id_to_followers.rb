class AddCurrentUserIdToFollowers < ActiveRecord::Migration[5.2]
  def change
    add_column :followers, :current_user_id, :integer
  end
end
