class Interface

  attr_accessor :prompt, :user


  @@answer_total = []

<<<<<<< HEAD
  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts " "
    puts "Welcome to the World of Benders! Its been 100 years since the last Avatar has vanished.."
    puts " "
    sleep 4
    puts "The Avatar is needed to restore balance amongst the five nations of the World: Air, Water, Earth, Fire, and Code!"
    puts " "
    sleep 5
    puts "After the disappearance of the Avatar, the Code Benders were overwhelemd by an unrelenting LAB ATTACK!" 
    puts " "
    sleep 4
    puts "Use this DIVINATION TEST to discover who you are,"
    puts " "
    puts "and build a team of Benders to defeat the labs and restore balance to the World!"
    sleep 6

  end
 
=======
  def run
    create_user
  end
  def create_user
    @@user = User.create(name)
    #capture the name instance
    #use that as a variable for to create a new user
    #invoke questions to begin quiz
>>>>>>> 09e4c3c11035a641cef5b4dc004f8f34a0adb0ed

  end
  def question_one
    prompt = TTY::Prompt.new
    answer_one = prompt.select("How many Nations exist in The Avatar Series?") do |menu|
      menu.choice "Six", 0
      menu.choice "Four", 1
      menu.choice "Three", 0
      menu.choice "Two", 0
    end
    @@answer_total << answer_one
  end

  def question_two
    prompt = TTY::Prompt.new
    answer_two = prompt.select("Where did Sokka and Katara find Aang?") do |menu|
      menu.choice "Under the ocean", 0
      menu.choice "Inside a shipwreck", 0
      menu.choice "Inside a ball of ice", 1
      menu.choice "Inside an abandoned temple", 0
    end
    @@answer_total << answer_two
  end

  def question_three
    prompt = TTY::Prompt.new
    answer_three = prompt.select("How many labs were you able to complete this week?") do |menu|
      menu.choice "fewer than 20", 1
      menu.choice "20 to 30", 2
      menu.choice "30 to 40", 3
      menu.choice "40 or more", 4
    end
    @@answer_total << answer_three
  end

  def question_four
    prompt = TTY::Prompt.new
    answer_four = prompt.select("Who were the first earthbenders?") do |menu|
      menu.choice "The Dragons", 0
      menu.choice "Toph's ancestors", 0
      menu.choice "The Badgermoles", 1
      menu.choice "Avatar Kyoshi", 0
    end
    @@answer_total << answer_four
  end

  def question_five
    prompt = TTY::Prompt.new
    answer_five = prompt.select("Which Avatar directly preceded Avatar Aang?") do |menu|
      menu.choice "Avatar Roku", 1
      menu.choice "Avatar Raava", 0
      menu.choice "Avatar Rohan", 0
      menu.choice "Avatar Rangi", 0
    end
    @@answer_total << answer_five
  end

  def question_six
    prompt = TTY::Prompt.new
    answer_six = prompt.select("Who Suggested the Name 'The Code-Benders' for our cohort name?") do |menu|
      menu.choice "Patrick", 2
      menu.choice "Samantha", 4
      menu.choice "Franklin", 3
      menu.choice "Jade", 1
    end
    @@answer_total << answer_six
  end

  def question_seven
    prompt = TTY::Prompt.new
    answer_seven = prompt.select("Who gave up their life to restore the bridge of Yin and Yang in the spirit and physical world?") do |menu|
      menu.choice "Sokka", 0
      menu.choice "Taaluk", 0
      menu.choice "Queen Leigh", 0
      menu.choice "Princess Yue", 1
    end
    @@answer_total << answer_seven
  end

  def question_eight
    prompt = TTY::Prompt.new
    answer_eight = prompt.select("Who is a firebender?") do |menu|
      menu.choice "Bumi", 0
      menu.choice "Appa", 0
      menu.choice "Mai", 1
      menu.choice "Pipsqueak", 0
    end
    @@answer_total << answer_eight
  end

  def question_nine
    prompt = TTY::Prompt.new
    answer_nine = prompt.select("What is the official game of The Code-benders?") do |menu|
      menu.choice "Procrastination", 1
      menu.choice "Animator", 4
      menu.choice "Fartnite", 3
      menu.choice "Learn IDE", 2
    end
    @@answer_total << answer_nine
  end

  def question_ten
    prompt = TTY::Prompt.new
    answer_ten = prompt.select("Who is an airbender?") do |menu|
      menu.choice "Tarlock", 0
      menu.choice "Tenzin", 1
      menu.choice "Sokka", 0
      menu.choice "Meng", 0
    end
    @@answer_total << answer_ten
  end

  def question_eleven
    prompt = TTY::Prompt.new
    answer_eleven = prompt.select("Who is a White Lotus Official?") do |menu|
      menu.choice "Zuko", 0
      menu.choice "Momo", 0
      menu.choice "Iroh", 1
      menu.choice "Aang", 0
    end
    @@answer_total << answer_eleven
  end

  def question_twelve
    prompt = TTY::Prompt.new
    answer_twelve = prompt.select("Whose nickname in the cohort is Daisy?") do |menu|
      menu.choice "Sayana", 3
      menu.choice "Kalkidan", 4
      menu.choice "Ekaterina", 2
      menu.choice "Waverley", 1
    end
    @@answer_total << answer_twelve
  end

  def question_thirteen
    prompt = TTY::Prompt.new
    answer_thirteen = prompt.select("Which Avatar is the immediate successor of Avatar Aang?") do |menu|
      menu.choice "Avatar Korra", 1
      menu.choice "Avatar Katara", 0
      menu.choice "Avatar Kori", 0
      menu.choice "Avatar Kuvira", 0
    end
    @@answer_total << answer_thirteen
    question_fourteen
  end

  def question_fourteen
    prompt = TTY::Prompt.new
    answer_fourteen = prompt.select("What was the significance of Sozin's Comet to the Fire Nation?") do |menu|
      menu.choice "It fortified the alliance between all four nations", 0
      menu.choice "It led to the discovery of bloodbending", 0
      menu.choice "It weakened the Fire Nation and depleted firebending output", 0
      menu.choice "It was the catalyst of the war and increased firebending output", 1
    end
    @@answer_total << answer_fourteen
    question_fifteen
  end

  def question_fifteen
    prompt = TTY::Prompt.new
    answer_fifteen = prompt.select("Do you consider the name Franklin to be exceptionally cool?") do |menu|
      menu.choice "Yes", 50
      menu.choice "No", 1
    end
    @@answer_total << answer_fifteen
    assign_avatar
  end

  def assign_avatar
    puts " "
    puts "The Divination Test has determined..."
    sleep 2
      answers = @@answer_total.reduce(:+)
      case answers
      when 5
      selected_avatar = Avatar.find_by(name: "Sozin")
<<<<<<< HEAD
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
=======
      puts "that you are #{sozin.name}, #{sozin.desc}".bold
      when 6
      ozai = Avatar.find_by(name:"Ozai")
      pu
      when 7
      hama = Avatar.find_by(name: "Hama")
      pu
      when 8
      momo = Avatar.find_by(name:"Momo")
      pu
      when 9
      appa = Avatar.find_by(name: "Appa")
      pu
      when 10
      mai = Avatar.find_by(name: "Mai")
      
      when 11
      suki = Avatar.find_by(name:"Suki")
      put
      when 12
      june = Avatar.find_by(name: "June")
      puts
      when 13
      bumi = Avatar.find_by(name: "Bumi")
      pu  
      when 14
      sokka = Avatar.find_by(name: "Sokka")
      puts  
      when 15
      combustionman = Avatar.find_by(name: "The Combustion Man")
      puts "that you are #  
      when 16
      kuruk = Avatar.find_by(name: "Kuruk")
      puts  
      when 17
      tenzin = Avatar.find_by(name: "Tenzin") 
      when 18
      jet = Avatar.find_by(name: "Jet")
        
      when 19
      gyatso= Avatar.find_by(name: "Gyatso") 
      when 20
      korra = Avatar.find_by(name: "Korra")
 
      when 21
      zuko = Avatar.find_by(name: "Zuko") 
      when 22
      toph = Avatar.find_by(name : "Toph")
      when 23
      azula = Avatar.find_by(name: "Azula")
      when 24
      roku = Avatar.find_by(name: "Roku")
      when 25
      kyoshi = Avatar.find_by(name: "Kyoshi")
      when 26
      iroh = Avatar.find_by(name: "Iroh")
      when 27
      yangchen = Avatar.find_by(name: "Yangchen")
      puts "that  
      when 28
      katara = Avatar.find_by(name: "Katara")
      puts "  
      when 29
      aang = Avatar.find_by(name: "Aang")
      pu  
      when 30
      wan = Avatar.find_by(name: "Wan")
        
>>>>>>> 09e4c3c11035a641cef5b4dc004f8f34a0adb0ed
      when 50..100
      selected_avatar = Avatar.find_by(name: "The Cabbage Man")
    end
<<<<<<< HEAD
    puts " "
    puts "that you are #{selected_avatar.name.upcase.bold}, #{selected_avatar.desc}"
    end
end 
=======
    puts "that you are #{selected_avatar.name}, #{selected_avatar.desc}".bold 
    Quiz.create(user_id: @@user.id, avatar_id)
  end
  #once avatar get picked create an instance with Avatar and User Id

end


#   private

  
# end
>>>>>>> 09e4c3c11035a641cef5b4dc004f8f34a0adb0ed
