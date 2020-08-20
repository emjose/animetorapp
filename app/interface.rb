class Animetor
  include CliControls, Quizzer
  
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
   welcome
   login
   wanna_see_the_best
   wanna_join_the_fight
  end

  private


  def welcome
    system 'clear'
    puts (welcome_message)
    sleep(0.6)
  end

  def login
    username = down_ask("Before we can figure out if you were chosen to be the avatar, 
    we have to find out who you were in your past life")
    @user = User.create_by(username: username)
      if username == franklin || username == frank 
        @@avatar_tally = 0
      end
end
  def wanna_see_the_best
    answer = yes_no("Wanna see your fav jokes?")
    return @@all_avatar.last(5) if answer
  end
  def wanna_join_the_fight
    answer = yes_no("I Have a Strong feeling that your no ordinary Human, complete the Divinity test to Confirm my Suspicion")
      return make_quiz if answer
  end


    welcome_message = "Welcome to the World of Benders! Its been 100 years since the last Avatar has vanished.
The Avatar is needed to restore balance amongst the five nations of the World: Air, Water, Earth, Fire, and Code!
After the disappearance of the Avatar, the Code Benders launched a full lab attack, 
in an effort to spread code around the world.
Use this divination test to discover who you are, and
build a team of Benders to defeat the labs and restore balance to the World!
"
end