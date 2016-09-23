class ChangeProjectsTotalToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :total, :integer
  end
end
