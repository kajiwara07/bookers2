class Book < ApplicationRecord
  validates:title, presence: true
    validates:body, presence: true
    validates:body, length: { maximum: 200 }
  has_one_attached :image
  belongs_to :user
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/image/no_image.jpg')
      image.attach(io: File.open(file_path),filename: 'default-image.jpg', content_type: 'image/jpeg')
    else
      image
    end
  end    
end
