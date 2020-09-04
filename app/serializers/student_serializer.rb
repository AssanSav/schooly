class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :image, :major, :deleted
end
