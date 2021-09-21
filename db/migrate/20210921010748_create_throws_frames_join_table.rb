class CreateThrowsFramesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :throws, :frames do |t|
      t.index %i[throw_id frame_id]
    end
  end
end
