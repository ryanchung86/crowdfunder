class AddUserPledge < ActiveRecord::Migration[5.0]
  def change
    add_column :pledges, :user_id, :integer
  end
end
