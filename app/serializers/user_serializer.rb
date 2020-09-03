class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :email, :image, :remember_me, :major, :department, :admin, :teacher, :student
end
