class RemoveCurrentUserIdFromFollowers < ActiveRecord::Migration[5.2]
  def change
    remove_column :followers, :current_user_id, :integer
  end
end
