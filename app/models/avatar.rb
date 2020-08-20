class Avatar < ActiveRecord::Base
    has_many :quizzes
    has_many :users, through: :quizzes
end
@@all_avatars = []
@my_avatars = []

def initialize(avatar)
    @@all_avatars << self
end