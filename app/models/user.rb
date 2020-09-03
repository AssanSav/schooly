class User < ApplicationRecord
    has_secure_password
    has_one_attached :image

    validates_uniqueness_of :email
    validates_presence_of :first_name, last_name, :email, :image, :major, :department 
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    before_validation :capitalize_email

    def capitalize_email
        self.email = self.email.capitalize
    end
    
end
