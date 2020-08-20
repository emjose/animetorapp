class Animetor
  include CliControls, Quizzer
  
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  @@answer_total = []
  def run
   welcome
   login
   wanna_see_the_best
   wanna_join_the_fight
# class Interface
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
      
      end
end
  def wanna_see_the_best
    answer = yes_no("Wish to see the strongest Heroes who have gone before you")
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
  end

  def question_fifteen
    prompt = TTY::Prompt.new
    answer_fifteen = prompt.select("Do you consider the name Franklin to be exceptionally cool?") do |menu|
      menu.choice "Yes", 50
      menu.choice "No", 1
    end
    @@answer_total << answer_fifteen
  end

  def assign_avatar
    puts "The Divination Test has determined..."
    sleep 3
    if @@answer_total.reduce(:+) = 5
      sozin = Avatar.create(avatar_id: “Sozin, the intelligent yet ruthless Fire Lord and instigator of the Hundred Year War.”)
      puts "that you are #{sozin}".bold 
    elsif @@answer_total.reduce(:+) = 6
      ozai = Avatar.create(avatar_id: “Ozai, the strong and power-hungry ruler of the Fire Nation with an almost unmatchable mastery of firebending.”)
      puts "that you are #{ozai}".bold 
    elsif @@answer_total.reduce(:+) = 7
      hama = Avatar.create(avatar_id: “Hama, a seemingly gentle and kind old woman, but you harbor a dark skill of bending blood to your will.”)
      puts "that you are #{hama}".bold 
    elsif @@answer_total.reduce(:+) = 8
      momo = Avatar.create(avatar_id: “Momo, the winged lemur companion of Avatar Aang. You are curious, playful, intelligent, and most of all, loyal.”)
      puts "that you are #{momo}".bold
    elsif @@answer_total.reduce(:+) = 9
      appa = Avatar.create(avatar_id: “Appa, the loyal and trusted Sky bison of Avatar Aang. Despite numerous obstacles, you persevere and rise to the occasion.”)
      puts "that you are #{appa}".bold
    elsif @@answer_total.reduce(:+) = 10
      mai = Avatar.create(avatar_id: “Mai, a master markswoman of knives and arrows. You are outwardly stoic and brooding, but you are flowing with compassion and mercy.”)
      puts "that you are #{mai}".bold
    elsif @@answer_total.reduce(:+) = 11
      suki = Avatar.create(avatar_id: “Suki, a woman of action who excels in hand-to-hand combat. You are a fast learner and possess a strong sense of duty.”)
      puts "that you are #{suki}".bold
    elsif @@answer_total.reduce(:+) = 12
      june = Avatar.create(avatar_id: “June, an exceptional bounty hunter with a sarcastic wit. You have no allegiance to anyone, except for the highest bidder of your services.”)
      puts "that you are #{june}".bold
    elsif @@answer_total.reduce(:+) = 13
      bumi = Avatar.create(avatar_id: “Bumi, the rambunctious son of Avatar Aang. You are at times reckless, but you always have the best interests of your loved ones.”)
      puts "that you are #{bumi}".bold
    elsif @@answer_total.reduce(:+) = 14
      sokka = Avatar.create(avatar_id: “Sokka, the skeptical and abrasive brother of Katara. You learn to be flexible over time, and you have no shortage of loyalty.”
      puts "that you are #{sokka}".bold
    elsif @@answer_total.reduce(:+) = 15
      combustionman = Avatar.create(avatar_id: “The Combustion Man, a masterful and silent firebending assassin with a unique ability to detonate large explosions from your third-eye tattoo.”)
      puts "that you are #{combustionman}".bold
    elsif @@answer_total.reduce(:+) = 16
      kuruk = Avatar.create(avatar_id: “Kuruk, the Water Tribe-born Avatar. At times you are your own worst enemy, but you are widely loved by your friends and family.
      puts "that you are #{kuruk}".bold
    elsif @@answer_total.reduce(:+) = 17
      tenzin = Avatar.create(avatar_id: “Tenzin, the youngest son of Avatar Aang. You are an airbending master and stern in nature, but a sense of humor does slip through at times.”
      puts "that you are #{tenzin}".bold
    elsif @@answer_total.reduce(:+) = 18
      jet = Avatar.create(avatar_id: “Jet, the young leader of the Earth Kingdom Freedom Fighters. Although you are fueled by revenge, you have a magnetic, charismatic personality.”)
      puts "that you are #{jet}".bold
    elsif @@answer_total.reduce(:+) = 19
      gyatso = Avatar.create(avatar_id: “Gyatso, the kind, wise mentor of Avatar Aang. You are excellent at airbending and you balance your wisdom with a great sense of humor.”)
      puts "that you are #{gyatso}".bold
    elsif @@answer_total.reduce(:+) = 20
      korra = Avatar.create(avatar_id: “Korra, the immediate successor of Avatar Aang. Extremely powerful at bending all elements, you are fierce and possess strong loyalty towards your loved ones and duty as the Avatar.”)
      puts "that you are #{korra}".bold
    elsif @@answer_total.reduce(:+) = 21
      zuko = Avatar.create(avatar_id: “Zuko, the prodigal son of Fire Lord Ozai. Despite internal struggle and turmoil, you are driven by hope and achieve great wisdom.”)
      puts "that you are #{zuko}".bold
    elsif @@answer_total.reduce(:+) = 22
      toph = Avatar.create(avatar_id: “Toph, a powerful, earthbending master. Your visual impairment is of no hindrance, and you are confident, honest, and full of no-nonsense.”)
      puts "that you are #{toph}".bold
    elsif @@answer_total.reduce(:+) = 23
      azula = Avatar.create(avatar_id: “Azula, a firebending prodigy and sister of Zuko. At times lacking empathy, you overcome your insecurities and discover a strong sense of self.”)
      puts "that you are #{azula}".bold
    elsif @@answer_total.reduce(:+) = 24
      roku = Avatar.create(avatar_id: “Roku, the wise Fire Nation-born Avatar. You are self-critical and regretful, but you are warm-hearted, disciplined, and wise.”)
      puts "that you are #{roku}".bold
    elsif @@answer_total.reduce(:+) = 25
      kyoshi = Avatar.create(avatar_id: “Kyoshi, the Earth Kingdom-born Avatar. You are a merciless pursuer of justice, and you have a far-reaching legacy of fear and admiration.”)
      puts "that you are #{kyoshi}".bold
    elsif @@answer_total.reduce(:+) = 26
      iroh = Avatar.create(avatar_id: “Iroh, a retired Fire Nation General and compassionate uncle of Zuko. You are wise, easygoing, and you live life to the fullest.”
      puts "that you are #{iroh}".bold
    elsif @@answer_total.reduce(:+) = 27
      yangchen = Avatar.create(avatar_id: “Yangchen, the Air Nomad Avatar before Aang. You are an encouraging and empathetic leader, and you are known for your great compassion.”)
      puts "that you are #{yangchen}".bold
    elsif @@answer_total.reduce(:+) = 28
      katara = Avatar.create(avatar_id: “Katara, a waterbending master. You are compassionate, and your inner strength drives your determination to fight for your loved ones.”)
      puts "that you are #{katara}".bold
    elsif @@answer_total.reduce(:+) = 29
      aang = Avatar.create(avatar_id: “Aang, the Air Nomad Avatar. As a reluctant hero, you are somewhat naïve and carefree, but you rise to the duty as the Avatar to bring peace to the World of the Benders.”)
      puts "that you are #{aang}".bold
    elsif @@answer_total.reduce(:+) = 30
      wan = Avatar.create(avatar_id: “Wan, the very first Avatar. You are initially reckless and temperamental, but only because you feel that others are being treated unjustly. You are humble, brave, and achieve full mastery of Air, Water, Earth, and Fire!
      puts "that you are #{wan}".bold
    elsif @@answer_total.reduce(:+) >= 50
      cabbageman = Avatar.create(avatar_id: “The Cabbage Man! Also known as the cabbage merchant, you are constantly plagued by the misfortune of having your cabbage cart continually destroyed.”)
      puts "that you are #{cabbageman}".bold
    end
  end


  def assign_avatar
    puts "The Divination Test has determined..."
    sleep 3
    if @@answer_total.reduce(:+) = 5
      sozin = Avatar.create(avatar_id: “Sozin, the intelligent yet ruthless Fire Lord and instigator of the Hundred Year War.”)
      puts "that you are #{sozin.avatar_id}".bold 
    elsif @@answer_total.reduce(:+) = 6
      ozai = Avatar.create(avatar_id: “Ozai, the strong and power-hungry ruler of the Fire Nation with an almost unmatchable mastery of firebending.”)
      puts "that you are #{ozai.avatar_id}".bold 
    elsif @@answer_total.reduce(:+) = 7
      hama = Avatar.create(avatar_id: “Hama, a seemingly gentle and kind old woman, but you harbor a dark skill of bending blood to your will.”)
      puts "that you are #{hama.avatar_id}".bold 
    elsif @@answer_total.reduce(:+) = 8
      momo = Avatar.create(avatar_id: “Momo, the winged lemur companion of Avatar Aang. You are curious, playful, intelligent, and most of all, loyal.”)
      puts "that you are #{momo.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 9
      appa = Avatar.create(avatar_id: “Appa, the loyal and trusted Sky bison of Avatar Aang. Despite numerous obstacles, you persevere and rise to the occasion.”)
      puts "that you are #{appa.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 10
      mai = Avatar.create(avatar_id: “Mai, a master markswoman of knives and arrows. You are outwardly stoic and brooding, but you are flowing with compassion and mercy.”)
      puts "that you are #{mai.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 11
      suki = Avatar.create(avatar_id: “Suki, a woman of action who excels in hand-to-hand combat. You are a fast learner and possess a strong sense of duty.”)
      puts "that you are #{suki.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 12
      june = Avatar.create(avatar_id: “June, an exceptional bounty hunter with a sarcastic wit. You have no allegiance to anyone, except for the highest bidder of your services.”)
      puts "that you are #{june.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 13
      bumi = Avatar.create(avatar_id: “Bumi, the rambunctious son of Avatar Aang. You are at times reckless, but you always have the best interests of your loved ones.”)
      puts "that you are #{bumi.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 14
      sokka = Avatar.create(avatar_id: “Sokka, the skeptical and abrasive brother of Katara. You learn to be flexible over time, and you have no shortage of loyalty.”
      puts "that you are #{sokka.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 15
      combustionman = Avatar.create(avatar_id: “The Combustion Man, a masterful and silent firebending assassin with a unique ability to detonate large explosions from your third-eye tattoo.”)
      puts "that you are #{combustionman.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 16
      kuruk = Avatar.create(avatar_id: “Kuruk, the Water Tribe-born Avatar. At times you are your own worst enemy, but you are widely loved by your friends and family.
      puts "that you are #{kuruk.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 17
      tenzin = Avatar.create(avatar_id: “Tenzin, the youngest son of Avatar Aang. You are an airbending master and stern in nature, but a sense of humor does slip through at times.”
      puts "that you are #{tenzin.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 18
      jet = Avatar.create(avatar_id: “Jet, the young leader of the Earth Kingdom Freedom Fighters. Although you are fueled by revenge, you have a magnetic, charismatic personality.”)
      puts "that you are #{jet.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 19
      gyatso = Avatar.create(avatar_id: “Gyatso, the kind, wise mentor of Avatar Aang. You are excellent at airbending and you balance your wisdom with a great sense of humor.”)
      puts "that you are #{gyatso.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 20
      korra = Avatar.create(avatar_id: “Korra, the immediate successor of Avatar Aang. Extremely powerful at bending all elements, you are fierce and possess strong loyalty towards your loved ones and duty as the Avatar.”)
      puts "that you are #{korra.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 21
      zuko = Avatar.create(avatar_id: “Zuko, the prodigal son of Fire Lord Ozai. Despite internal struggle and turmoil, you are driven by hope and achieve great wisdom.”)
      puts "that you are #{zuko.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 22
      toph = Avatar.create(avatar_id: “Toph, a powerful, earthbending master. Your visual impairment is of no hindrance, and you are confident, honest, and full of no-nonsense.”)
      puts "that you are #{toph.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 23
      azula = Avatar.create(avatar_id: “Azula, a firebending prodigy and sister of Zuko. At times lacking empathy, you overcome your insecurities and discover a strong sense of self.”)
      puts "that you are #{azula.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 24
      roku = Avatar.create(avatar_id: “Roku, the wise Fire Nation-born Avatar. You are self-critical and regretful, but you are warm-hearted, disciplined, and wise.”)
      puts "that you are #{roku.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 25
      kyoshi = Avatar.create(avatar_id: “Kyoshi, the Earth Kingdom-born Avatar. You are a merciless pursuer of justice, and you have a far-reaching legacy of fear and admiration.”)
      puts "that you are #{kyoshi.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 26
      iroh = Avatar.create(avatar_id: “Iroh, a retired Fire Nation General and compassionate uncle of Zuko. You are wise, easygoing, and you live life to the fullest.”
      puts "that you are #{iroh.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 27
      yangchen = Avatar.create(avatar_id: “Yangchen, the Air Nomad Avatar before Aang. You are an encouraging and empathetic leader, and you are known for your great compassion.”)
      puts "that you are #{yangchen.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 28
      katara = Avatar.create(avatar_id: “Katara, a waterbending master. You are compassionate, and your inner strength drives your determination to fight for your loved ones.”)
      puts "that you are #{katara.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 29
      aang = Avatar.create(avatar_id: “Aang, the Air Nomad Avatar. As a reluctant hero, you are somewhat naïve and carefree, but you rise to the duty as the Avatar to bring peace to the World of the Benders.”)
      puts "that you are #{aang.avatar_id}".bold
    elsif @@answer_total.reduce(:+) = 30
      wan = Avatar.create(avatar_id: “Wan, the very first Avatar. You are initially reckless and temperamental, but only because you feel that others are being treated unjustly. You are humble, brave, and achieve full mastery of Air, Water, Earth, and Fire!
      puts "that you are #{wan.avatar_id}".bold
    elsif @@answer_total.reduce(:+) >= 50
      cabbageman = Avatar.create(avatar_id: “The Cabbage Man! Also known as the cabbage merchant, you are constantly plagued by the misfortune of having your cabbage cart continually destroyed.”)
      puts "that you are #{cabbageman.avatar_id}".bold
    end
  end


      







      

  

