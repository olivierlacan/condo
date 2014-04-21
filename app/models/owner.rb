class Owner < ActiveRecord::Base
  belongs_to :building
  belongs_to :user
  has_many :lots
  has_one :representative
  has_one :council, through: :representative

  validates :building, presence: true

  default_scope { order("last_name ASC") }

  def name
    return nil if self.first_name.blank? && self.last_name.blank?
    "#{self.first_name} #{self.last_name}".strip
  end
end
