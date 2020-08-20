class User < ActiveRecord::Base
    has_many :quizzes
    has_many :avatars, through: :quizzes
end


attr accessor :username, :avatar
def initialize(username_par)
    @username = username_par
end
def my_avatar(avatar)
    use

def set_avatar #sets the user to an instance of the Avatar class

end 
def Collect_avatars #shovels all the characters associated with a particular user in an array

end

def display_avatar #show's what Avatar instance your assigned to 

end 
def display_team #shows all the avatar instance you acquired

end

end