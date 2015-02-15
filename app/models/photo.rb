class Photo < ActiveRecord::Base
    dragonfly_accessor :image
    validates :title, presence: true, length: {minimum: 2, maximum: 20}
    validates :image, presence: true
 
    validates :image, presence: true
    validates_size_of :image, maximum: 10.megabytes,
                      message: "should be no more than 2 MB", if: :image_changed?
 
    #validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp, :gif], case_sensitive: false,
    #                   message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
end
