class RemoveFIdFromFollowers < ActiveRecord::Migration[5.2]
  def change
    remove_column :followers, :f_id, :integer
  end
end
