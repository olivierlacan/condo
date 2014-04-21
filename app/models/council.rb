class Council < ActiveRecord::Base
  belongs_to :building
  has_many :representatives

  validates :building, presence: true

  def reps
    self.representatives
  end
end
