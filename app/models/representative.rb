class Representative < ActiveRecord::Base
  include OwnerNameable

  belongs_to :council
  belongs_to :owner

  validates :owner, :council, presence: true

  default_scope { joins(:owner).order("owners.last_name ASC") }

  delegate :first_name, :last_name, :email, :phone, to: :owner
end
