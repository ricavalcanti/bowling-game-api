class Throw < ApplicationRecord
  has_and_belongs_to_many :frames

  before_destroy :remove_from_frames

  private

  def remove_from_frames
    frames.each do |frame|
      frame.remove_throw(self)
    end
  end
end
