class Insta3 < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user  
 #mount_uploader :image, PictureUploader    
    
end
