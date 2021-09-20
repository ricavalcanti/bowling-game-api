class CreateFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :frames do |t|
      t.integer :frame_score, default: 0
      t.integer :waiting_how_much_throws, default: 2
      t.integer :frame_number, default: 1

      t.timestamps
    end
  end
end
