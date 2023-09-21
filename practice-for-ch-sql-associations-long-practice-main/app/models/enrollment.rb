class Enrollment < ApplicationRecord
    has_many :students,
    primary_key :id,
    foriegn_key: :user_id
    class_name: :Enrollment
end