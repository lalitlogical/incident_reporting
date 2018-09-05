class IncidentAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :incident
end
