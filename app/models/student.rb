class Student < ApplicationRecord
    has_secure_password
    has_one_attached :avater

    validates_uniqueness_of :email
    validates_presence_of :first_name, :last_name, :email, :image, :major
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    before_save :capitalize

    private

    def capitalize
        capitalize_attr = ["first_name", "last_name", "major"]
        self.attributes.each do |attr, val| 
            if attr == "email"
                self.email = self.email.upcase
            else
                self.send("#{attr}=", val.to_s.strip.titleize) if capitalize_attr.include?(attr)
            end
        end
    end
end
