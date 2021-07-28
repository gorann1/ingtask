class Job < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  CATEGORIES = ["Full-Time", "Part-time", "Contract", "Freelance" ]
end
