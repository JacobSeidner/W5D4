class Course < ApplicationRecord
    attr_reader :prereq_id

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

    belongs_to :prereq,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: true
end