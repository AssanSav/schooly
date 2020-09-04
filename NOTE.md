<!-- USERS TABLE
    first_name :string
    last_name :string
    email :string
    image :string
    password_digest :string
    remember_me :string
    major :string 
    department :string
    admin :boolean
    teacher :boolean 
    student :boolean -->

TEACHERS TABLE
    first_name :string
    last_name :string
    email :string
    image :string
    password_digest :string
    remember_me :string
    department :string
    admin :boolean

STUDENTS TABLE 
    first_name :string
    last_name :string
    email :string
    image :string
    password_digest :string
    major :string 

TEACHER_STUDENTS
    teacher_id :integer
    student_id :integer

COURSES TABLE
    name :string
    credit :integer
    room :string  
    time :datetime
    course_type :string
    students_num_limit :integer
    teacher_id :integer
    class_id :integer
       

GRADES TABLE
    grade :integer
    course_id :integer
    student_id :integer