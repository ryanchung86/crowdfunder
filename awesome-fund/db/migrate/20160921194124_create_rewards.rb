class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.integer :benchmark
      t.text :description

      t.timestamps
    end
  end
end
