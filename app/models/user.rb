class User < ApplicationRecord
    has_secure_password
    has_one_attached :avater

    validates_uniqueness_of :email
    validates_presence_of :first_name, :last_name, :email, :image, :major, :department 
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    before_validation :validate_user
    before_save :capitalize

    private
    def validate_user
        unless self.admin == true || self.teacher == true || self.student == true
            errors.add(:base, "Check either admin, teacher or student")
        end
    end

    def capitalize
        capitalize_attr = ["first_name", "last_name", "image", "major", "department" ]
        self.attributes.each do |attr, val| 
            if attr == "email"
                self.email = self.email.upcase
            else
                self.send("#{attr}=", val.to_s.strip.titleize) if capitalize_attr.include?(attr)
            end
        end
    end
end
