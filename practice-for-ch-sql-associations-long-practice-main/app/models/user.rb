class User < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    #has_many :enrolled_courses,
        # primary_key: :id,
        # foreign_key: :course_id,
        # class_name: :Course
    def enrolled_courses
        enrolled_courses = []
        self.enrollments.each do |enrollment|
            enrolled_courses << enrollment.course
        end
        return enrolled_courses
    end
end