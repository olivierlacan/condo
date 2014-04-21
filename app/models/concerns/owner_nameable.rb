module OwnerNameable
  extend ActiveSupport::Concern

  def name
    return nil if owner.nil? || owner.name.blank?
    owner.name
  end
end
