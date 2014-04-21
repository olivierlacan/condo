class Syndic < ActiveRecord::Base
  belongs_to :building
  has_many :contacts, as: :contactable
end
