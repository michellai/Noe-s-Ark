class Photo < ActiveRecord::Base
    belongs_to :imageable, :polymorphic => true
    validates :title, presence: true, length: {minimum: 2, maximum: 20}
    validates :image, presence: true
 
    validates :image, presence: true
    validates_size_of :image, maximum: 10.megabytes,
                      message: "should be no more than 2 MB", if: :image_changed?

    dragonfly_accessor :image do
        #storage_options do |attachment|
        #  {
        #    path: "photos/creatures/attachment.title/#{rand(100)}",
        #    headers: {"x-amz-acl" => "public-read-write"}
        #  }
        #end
        after_assign do |img|
            img.encode!('jpg', '-quality 80') if img.image?
        end
    end
     
    #validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp, :gif], case_sensitive: false,
    #                   message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
end
