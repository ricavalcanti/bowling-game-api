class CreateFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :frames do |t|
      t.integer :frame_score
      t.integer :remain_balls
      t.boolean :is_strike
      t.boolean :is_spare
      t.integer :waiting_how_much_balls
      t.integer :first_ball_score
      t.integer :second_ball_score
      t.integer :extra_ball_score
      t.integer :frame_number

      t.timestamps
    end
  end
end
