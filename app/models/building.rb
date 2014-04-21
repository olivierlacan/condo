class Building < ActiveRecord::Base
  has_one :syndic
  has_one :council

  has_many :owners
  has_many :representatives, through: :council

  def name
    self.address.split(",").first
  end
end
