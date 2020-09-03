class User < ApplicationRecord
    has_secure_password
    has_one_attached :image

    validates_presence_of :first_name, last_name, :email, :image, :major, :department 
end
