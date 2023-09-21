class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    def enrolled_students
        enrolled_students = []
        self.enrollments.each do |enrollment|
            enrolled_students << enrollment.student
        end
        return enrolled_students
    end
end