class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :image, :department, :admin
end
