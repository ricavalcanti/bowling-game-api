class AddStatusToGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :status, :integer
  end
end
