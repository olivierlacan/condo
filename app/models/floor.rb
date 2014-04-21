class Floor < ActiveRecord::Base
  belongs_to :building
  has_many :lots

  validates :building, presence: true
end
