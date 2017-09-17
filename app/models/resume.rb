class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates_presence_of :content

  mount_uploader :attachment, AttachmentUploader
end
