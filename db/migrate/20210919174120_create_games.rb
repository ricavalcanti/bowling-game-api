class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :total_score

      t.timestamps
    end
  end
end
