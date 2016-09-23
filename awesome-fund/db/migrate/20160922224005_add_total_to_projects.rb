class AddTotalToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :total, :string
  end
end
