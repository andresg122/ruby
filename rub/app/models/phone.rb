class Phone < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
end
