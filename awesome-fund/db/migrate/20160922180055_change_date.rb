class ChangeDate < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :end_date, :date
  end
end
