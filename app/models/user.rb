class User < ActiveRecord::Base
    has_many :quizzes
    has_many :avatars, through: :quizzes
end


attr accessor :username, :avatar
def initialize(username_par)
    @username = username_par
end
def my_avatars
    @my_avatars.first
end
def display_team #shows all the avatar instance you acquired
    @my_avatars
end

end