class Image < ActiveRecord::Base
  mount_uploader :emojii, EmojiiUploader
end
