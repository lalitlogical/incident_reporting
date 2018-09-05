class Incident < ApplicationRecord
  has_many :incident_attachments, :dependent => :destroy
  accepts_nested_attributes_for :incident_attachments

  validates :incident, presence: true
end
