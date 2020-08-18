class User < ActiveRecord::Base
    has_many :quizzes
    has_many :avatars, through: :quizzes
end
