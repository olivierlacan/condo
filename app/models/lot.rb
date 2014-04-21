class Lot < ActiveRecord::Base
  belongs_to :floor
  belongs_to :owner

  validates :floor, :owner, presence: true

  def level
    floor.level
  end

  def to_s
    "#{level}-#{self.object_id}"
  end
end
