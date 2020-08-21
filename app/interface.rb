class Interface
  require 'colorize'
  attr_accessor :prompt, :user


  @@avatar = []
  @@all_avatars = []
  @@answer_total = []
  # def answer_reset
  #   answer = @@answer_total.reduce(:+)
  #   if answer > 42 
  #     @@answer_total = 0
  #   end
  # end

    def initialize
      @prompt = TTY::Prompt.new
    end

  def welcome
    puts " "
    puts "Welcome to the World of Benders! Its been 100 years since the last AVATAR has vanished.."
    puts "( 。・_・。)人(。・_・。 )(づ｡◕‿‿◕｡)🌬🌬🌬🌬🌬🌬🌬🌬づ(づ｡◕‿‿◕｡)づ( 。・_・。)人(。・_・。 ) 
    "
    sleep 4
    puts "The Avatar is needed to restore balance amongst the five nations of the World: Air, Water, Earth, Fire, and CODE!"
    puts " 🔥🔥🔥🌪🌪🌊🌊🌍🌎🔥🔥🔥🌪🌪🌊🌊🌍🌎🔥🔥🔥🌪🌪🌊🌊🌍🌎🔥🔥🔥🌪🌪🌊🌊🌍🌎  "
    sleep 5
    puts "After the disappearance of the Avatar, the Code Benders were overwhelemd by an unrelenting LAB ATTACK!"
    puts "  "
    sleep 4
    puts "Use this DIVINATION TEST to discover who you are,"
    puts "
    ⊂_ヽ
　 ＼＼ ＿
　　 ＼(　•_•) ᶠ
　　　 <　⌒ヽ ᴬ
　　　/ 　 へ＼ ᴮ
　　 /　　/　＼＼ ᵁ
　　 ﾚ　ノ　　 ヽ_つ ᴸ
　　/　/ ᴼ
　 /　/| ᵁ
　(　(ヽ ˢ
　|　|、＼
　| 丿 ＼ ⌒)
　| |　　) /
`ノ )　 ᴸﾉ
(_／

"
    puts "and build a team of BENDERS to defeat the labs and restore balance to the World!"
    sleep 6
  end

  def down_ask(str)
    prompt.ask(str)#.downcase
   end
   def yes_no(question_str)
    prompt.yes?(question_str) do |q|
    q.suffix "YES! /No Let the war continue"
    q.positive "Yes Lets End This War!"
    q.negative "No I Want the Fire 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥Nation to win"
    end
  end
  def login
    username = down_ask("
    Before we can figure out what roll you must play in ending the upcoming war, 
    we have to first find out who you were in your past life,
    Quickly enter Your name we must have it to link to your past and know who you were
    __________".blue)
    @user = User.create(name: username)
  end

  def display_login
    if @user.name
    puts "#{@user.name.capitalize} Complete the test to see your faith"
    else
      sleep 8
      login
    end
    sleep 4
  end

  def question_one
      prompt = TTY::Prompt.new
      answer_one = prompt.select("How many nations exist in the Avatar series?".bold.colorize(:green)) do |menu|
        menu.choice "Six", 0
        menu.choice "Four", 1
        menu.choice "Three", 0
        menu.choice "Two", 0
      end
      @@answer_total << answer_one
      system("clear")
      question_two
    end

    def question_two
      prompt = TTY::Prompt.new
      answer_two = prompt.select("Where did Sokka and Katara find Aang?".bold.colorize(:green)) do |menu|
        menu.choice "Under the ocean", 0
        menu.choice "Inside a shipwreck", 0
        menu.choice "Inside a ball of ice", 1
        menu.choice "Inside an abandoned temple", 0
      end
      @@answer_total << answer_two
      system("clear")
      question_three
    end

    def question_three
      prompt = TTY::Prompt.new
      answer_three = prompt.select("How many labs were you able to complete this week?".bold.colorize(:green)) do |menu|
        menu.choice "fewer than 20", 1
        menu.choice "20 to 30", 2
        menu.choice "30 to 40", 3
        menu.choice "40 or more", 4
      end
      @@answer_total << answer_three
      system("clear")
      question_four
    end

    def question_four
      prompt = TTY::Prompt.new
      answer_four = prompt.select("Who were the first earthbenders?".bold.colorize(:green)) do |menu|
        menu.choice "The Dragons", 0
        menu.choice "Toph's ancestors", 0
        menu.choice "The Badgermoles", 1
        menu.choice "Avatar Kyoshi", 0
      end
      @@answer_total << answer_four
      system("clear")
      question_five
    end

    def question_five
      prompt = TTY::Prompt.new
      answer_five = prompt.select("Which Avatar directly preceded Avatar Aang?".bold.colorize(:green)) do |menu|
        menu.choice "Avatar Roku", 1
        menu.choice "Avatar Raava", 0
        menu.choice "Avatar Rohan", 0
        menu.choice "Avatar Rangi", 0
      end
      @@answer_total << answer_five
      system("clear")
      question_six
    end

    def question_six
      prompt = TTY::Prompt.new
      answer_six = prompt.select("Who Suggested the Name 'The Code-Benders' for our cohort name?".bold.colorize(:green)) do |menu|
        menu.choice "Patrick", 2
        menu.choice "Samantha", 4
        menu.choice "Franklin", 3
        menu.choice "Jade", 1
      end
      @@answer_total << answer_six
      system("clear")
      question_seven
    end

    def question_seven
      prompt = TTY::Prompt.new
      answer_seven = prompt.select("Who gave up their life to restore the bridge of Yin and Yang in the spirit and physical world?".bold.colorize(:green)) do |menu|
        menu.choice "Sokka", 0
        menu.choice "Taaluk", 0
        menu.choice "Queen Leigh", 0
        menu.choice "Princess Yue", 1
      end
      @@answer_total << answer_seven
      system("clear")
      question_eight
    end

    def question_eight
      prompt = TTY::Prompt.new
      answer_eight = prompt.select("Who is a firebender?".bold.colorize(:green)) do |menu|
        menu.choice "Bumi", 0
        menu.choice "Appa", 0
        menu.choice "Mai", 1
        menu.choice "Pipsqueak", 0
      end
      @@answer_total << answer_eight
      system("clear")
      question_nine
    end

    def question_nine
      prompt = TTY::Prompt.new
      answer_nine = prompt.select("What is the official game of The Code-benders?".bold.colorize(:green)) do |menu|
        menu.choice "Procrastination", 1
        menu.choice "Animator", 4
        menu.choice "Fartnite", 3
        menu.choice "Learn IDE", 2
      end
      @@answer_total << answer_nine
      system("clear")
      question_ten
    end

    def question_ten
      prompt = TTY::Prompt.new
      answer_ten = prompt.select("Who is an airbender?".bold.colorize(:green)) do |menu|
        menu.choice "Tarlock", 0
        menu.choice "Tenzin", 1
        menu.choice "Sokka", 0
        menu.choice "Meng", 0
      end
      @@answer_total << answer_ten
      system("clear")
      question_eleven
    end

    def question_eleven
      prompt = TTY::Prompt.new
      answer_eleven = prompt.select("Who is a White Lotus Official?".bold.colorize(:green)) do |menu|
        menu.choice "Zuko", 0
        menu.choice "Momo", 0
        menu.choice "Iroh", 1
        menu.choice "Aang", 0
      end
      @@answer_total << answer_eleven
      system("clear")
      question_twelve
    end

    def question_twelve
      prompt = TTY::Prompt.new
      answer_twelve = prompt.select("Whose nickname in the cohort is Daisy?".bold.colorize(:green)) do |menu|
        menu.choice "Sayana", 3
        menu.choice "Kalkidan", 4
        menu.choice "Ekaterina", 2
        menu.choice "Waverley", 1
      end
      @@answer_total << answer_twelve
      system("clear")
      question_thirteen
    end

    def question_thirteen
      prompt = TTY::Prompt.new
      answer_thirteen = prompt.select("Which Avatar is the immediate successor of Avatar Aang?".bold.colorize(:green)) do |menu|
        menu.choice "Avatar Korra", 1
        menu.choice "Avatar Katara", 0
        menu.choice "Avatar Kori", 0
        menu.choice "Avatar Kuvira", 0
      end
      @@answer_total << answer_thirteen
      system("clear")
      question_fourteen
    end

    def question_fourteen
      prompt = TTY::Prompt.new
      answer_fourteen = prompt.select("What was the significance of Sozin's Comet to the Fire Nation?".bold.colorize(:green)) do |menu|
        menu.choice "It fortified the alliance between all four nations", 0
        menu.choice "It led to the discovery of bloodbending", 0
        menu.choice "It weakened the Fire Nation and depleted firebending output", 0
        menu.choice "It was the catalyst of the war and increased firebending output", 1
      end
      @@answer_total << answer_fourteen
      system("clear")
      question_fifteen
    end

    def question_fifteen
      prompt = TTY::Prompt.new
      answer_fifteen = prompt.select("Do you consider the name Franklin to be exceptionally cool?".bold.colorize(:green)) do |menu|
        menu.choice "Yes", 50
        menu.choice "No", 1
      end
      @@answer_total << answer_fifteen
    end

    def assign_avatar
      puts " "
      puts "The Divination Test has determined...".bold.colorize(:green)
      sleep 2
        answers = @@answer_total.reduce(:+)
        case answers
        when 5
        selected_avatar = Avatar.find_by(name: "Sozin")
        when 6
        selected_avatar = Avatar.find_by(name:"Ozai")
        when 7
        selected_avatar = Avatar.find_by(name: "Hama")
        when 8
        selected_avatar = Avatar.find_by(name:"Momo")
        when 9
        selected_avatar = Avatar.find_by(name: "Appa")
        when 10
        selected_avatar = Avatar.find_by(name: "Mai")
        when 11
        selected_avatar = Avatar.find_by(name:"Suki")
        when 12
        selected_avatar = Avatar.find_by(name: "June") 
        when 13
        selected_avatar = Avatar.find_by(name: "Bumi") 
        when 14
        selected_avatar = Avatar.find_by(name: "Sokka") 
        when 15
        selected_avatar = Avatar.find_by(name: "The Combustion Man") 
        when 16
        selected_avatar = Avatar.find_by(name: "Kuruk") 
        when 17
        selected_avatar = Avatar.find_by(name: "Tenzin") 
        when 18
        selected_avatar = Avatar.find_by(name: "Jet") 
        when 19
        selected_avatar = Avatar.find_by(name: "Gyatso") 
        when 20
        selected_avatar = Avatar.find_by(name: "Korra")
        when 21
        selected_avatar = Avatar.find_by(name: "Zuko")
        when 22
        selected_avatar = Avatar.find_by(name: "Toph") 
        when 23
        selected_avatar = Avatar.find_by(name: "Azula")
        when 24
        selected_avatar = Avatar.find_by(name: "Roku")
        when 25
        selected_avatar = Avatar.find_by(name: "Kyoshi")
        when 26
        selected_avatar = Avatar.find_by(name: "Iroh")
        when 27
        selected_avatar = Avatar.find_by(name: "Yangchen")
        when 28
        selected_avatar = Avatar.find_by(name: "Katara")
        when 29
        selected_avatar = Avatar.find_by(name: "Aang")
        when 30
        selected_avatar = Avatar.find_by(name: "Wan") 
        when 50..100
        selected_avatar = Avatar.find_by(name: "The Cabbage Man")
      end
      if @@avatar.length < 1
         @@avatar << selected_avatar
      end
      @@all_avatars << selected_avatar
      puts " "
      # puts "...that you are #{selected_avatar.name.upcase.bold}, #{selected_avatar.desc}"
      puts " "
      puts " "

    end
    def congratulations
      answer = @@answer_total.reduce(:+)
      selected_avatar = @@avatar[0]
      congrats1 = "#{@user.name.capitalize} You will not be the strongest ally to rely on in the battle 
      to end the hundred year war, but faith has chosen you to be #{selected_avatar.name}, 
      even though #{selected_avatar.desc}.
      Now do you wish to join a team to help in the battle to restore restore peace!?".blue
  
     congrats2 = " #{@user.name.capitalize} The strenght you have displayed before will not compare to what you 
     will accomplish now as #{selected_avatar.name} you will be an invaluable ally
     for #{selected_avatar.desc}.
     We are really close to ending the war! 
     continue building your team to see who you meet!".blue
  
     congrats3 = " #{@user.name.capitalize} you The who need to end the War has finally arrived,
     100 years passed, but now #{selected_avatar.name} 
     is here and will valiently apply your skills to end the war for 
     #{selected_avatar.desc}, only you can save the World ".green

      if answer < 9
      puts (congrats1)
      elsif answer > 9 && answer < 15
      puts (congrats2)
      elsif answer > 15
      puts (congrats3)
      elsif answer > 50
      puts "Your the cabbage man"

      sleep 10
      end


    congrats1 = "#{@user.name.capitalize} You will not be the strongest ally to rely on in the fight to end the hundred year war,
    but faith has chosen you to be #{selected_avatar.name}, even though #{selected_avatar.desc}. 
    Now do you wish to join a team tohelp in the battle to restore restore peace!?"

   congrats2 = " #{@user.name.capitalize} The strenght you have displayed before will not compare to what you 
   will accomplish now as #{selected_avatar.name} you will be an invaluable ally for #{selected_avatar.desc}.
   We are really close to ending the war, continue building your team to see who you meet!"

   congrats3 = " #{@user.name.capitalize} you The who need to end the War has finally arrived, 100 years passed, but now #{selected_avatar.name} 
   is here and will valiently
   apply his skills to end the war for #{selected_avatar.desc}, only you can save the World  "

    end

    def display_avatars      #need to get this displaying all the relevant avatars to the user
       avatar = @@all_avatars
       avatar[0].name
       sleep 6
    end 

    def try_again
      @@answer_total = []
      system("clear")
      answer = yes_no("Take the quiz again and see which other Heroes will aid you in your quest")
      return question_one if answer
    end




end