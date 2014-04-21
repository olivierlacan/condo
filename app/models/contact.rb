class Contact < ActiveRecord::Base
  belongs_to :contactable, polymorphic: true

  def name
    return nil if self.first_name.blank? && self.last_name.blank?
    "#{self.first_name} #{self.last_name}".strip
  end
end
