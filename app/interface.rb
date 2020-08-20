# class Interface
#   # here will be your CLI!
#   # it is not an AR class so you need to add attr

#   @@answer_total = []

#   # def run
#   #   # welcome
#   #   # login_or_signup
#   #   # wanna_see_favs?
#   #   # get_joke(what_subject)
#   # end

#   def question_one
#     prompt = TTY::Prompt.new
#     answer_one = prompt.select("How many Nations exist in The Avatar Series?") do |menu|
#       menu.choice "Six", 0
#       menu.choice "Four", 1
#       menu.choice "Three", 0
#       menu.choice "Two", 0
#     end
#     @@answer_total << answer_one
#   end

#   def question_two
#     prompt = TTY::Prompt.new
#     answer_two = prompt.select("Where did Sokka and Katara find Aang?") do |menu|
#       menu.choice "Under the ocean", 0
#       menu.choice "Inside a shipwreck", 0
#       menu.choice "Inside a ball of ice", 1
#       menu.choice "Inside an abandoned temple", 0
#     end
#     @@answer_total << answer_two
#   end

#   def question_three
#     prompt = TTY::Prompt.new
#     answer_three = prompt.select("How many labs were you able to complete this week?") do |menu|
#       menu.choice "fewer than 20", 1
#       menu.choice "20 to 30", 2
#       menu.choice "30 to 40", 3
#       menu.choice "40 or more", 4
#     end
#     @@answer_total << answer_three
#   end

#   def question_four
#     prompt = TTY::Prompt.new
#     answer_four = prompt.select("Who were the first earthbenders?") do |menu|
#       menu.choice "The Dragons", 0
#       menu.choice "Toph's ancestors", 0
#       menu.choice "The Badgermoles", 1
#       menu.choice "Avatar Kyoshi", 0
#     end
#     @@answer_total << answer_four
#   end

#   def question_five
#     prompt = TTY::Prompt.new
#     answer_five = prompt.select("Which Avatar directly preceded Avatar Aang?") do |menu|
#       menu.choice "Avatar Roku", 1
#       menu.choice "Avatar Raava", 0
#       menu.choice "Avatar Rohan", 0
#       menu.choice "Avatar Rangi", 0
#     end
#     @@answer_total << answer_five
#   end

#   def question_six
#     prompt = TTY::Prompt.new
#     answer_six = prompt.select("Who Suggested the Name 'The Code-Benders' for our cohort name?") do |menu|
#       menu.choice "Patrick", 2
#       menu.choice "Samantha", 4
#       menu.choice "Franklin", 3
#       menu.choice "Jade", 1
#     end
#     @@answer_total << answer_six
#   end

#   def question_seven
#     prompt = TTY::Prompt.new
#     answer_seven = prompt.select("Who gave up their life to restore the bridge of Yin and Yang in the spirit and physical world?") do |menu|
#       menu.choice "Sokka", 0
#       menu.choice "Taaluk", 0
#       menu.choice "Queen Leigh", 0
#       menu.choice "Princess Yue", 1
#     end
#     @@answer_total << answer_seven
#   end

#   def question_eight
#     prompt = TTY::Prompt.new
#     answer_eight = prompt.select("Who is a firebender?") do |menu|
#       menu.choice "Bumi", 0
#       menu.choice "Appa", 0
#       menu.choice "Mai", 1
#       menu.choice "Pipsqueak", 0
#     end
#     @@answer_total << answer_eight
#   end

#   def question_nine
#     prompt = TTY::Prompt.new
#     answer_nine = prompt.select("What is the official game of The Code-benders?") do |menu|
#       menu.choice "Procrastination", 1
#       menu.choice "Animator", 4
#       menu.choice "Fartnite", 3
#       menu.choice "Learn IDE", 2
#     end
#     @@answer_total << answer_nine
#   end

#   def question_ten
#     prompt = TTY::Prompt.new
#     answer_ten = prompt.select("Who is an airbender?") do |menu|
#       menu.choice "Tarlock", 0
#       menu.choice "Tenzin", 1
#       menu.choice "Sokka", 0
#       menu.choice "Meng", 0
#     end
#     @@answer_total << answer_ten
#   end

#   def question_eleven
#     prompt = TTY::Prompt.new
#     answer_eleven = prompt.select("Who is a White Lotus Official?") do |menu|
#       menu.choice "Zuko", 0
#       menu.choice "Momo", 0
#       menu.choice "Iroh", 1
#       menu.choice "Aang", 0
#     end
#     @@answer_total << answer_eleven
#   end

#   def question_twelve
#     prompt = TTY::Prompt.new
#     answer_twelve = prompt.select("Whose nickname in the cohort is Daisy?") do |menu|
#       menu.choice "Sayana", 3
#       menu.choice "Kalkidan", 4
#       menu.choice "Ekaterina", 2
#       menu.choice "Waverley", 1
#     end
#     @@answer_total << answer_twelve
#   end

#   def question_thirteen
#     prompt = TTY::Prompt.new
#     answer_thirteen = prompt.select("Which Avatar is the immediate successor of Avatar Aang?") do |menu|
#       menu.choice "Avatar Korra", 1
#       menu.choice "Avatar Katara", 0
#       menu.choice "Avatar Kori", 0
#       menu.choice "Avatar Kuvira", 0
#     end
#     @@answer_total << answer_thirteen
#   end

#   def question_fourteen
#     prompt = TTY::Prompt.new
#     answer_fourteen = prompt.select("What was the significance of Sozin's Comet to the Fire Nation?") do |menu|
#       menu.choice "It fortified the alliance between all four nations", 0
#       menu.choice "It led to the discovery of bloodbending", 0
#       menu.choice "It weakened the Fire Nation and depleted firebending output", 0
#       menu.choice "It was the catalyst of the war and increased firebending output", 1
#     end
#     @@answer_total << answer_fourteen
#   end

#   def question_fifteen
#     prompt = TTY::Prompt.new
#     answer_fifteen = prompt.select("Do you consider the name Franklin to be exceptionally cool?") do |menu|
#       menu.choice "Yes", 50
#       menu.choice "No", 1
#     end
#     @@answer_total << answer_fifteen
#   end

  def assign_avatar
    puts "The Divination Test has determined..."
    sleep 3
      case @@answer_total.reduce(:+)
      when 5
      sozin = Avatar.find_by(name: "Sozin")
      puts "that you are #{sozin.name}, #{sozin.desc}".bold
      when 6
      ozai = Avatar.find_by(name:"Ozai")
      puts "that you are #{ozai.name}, #{ozai.desc}".bold
      when 7
      hama = Avatar.find_by(name: "Hama")
      puts "that you are #{hama.name}, #{hama.desc}".bold
      when 8
      momo = Avatar.find_by(name:"Momo")
      puts "that you are #{momo.name}, #{momo.desc}".bold
      when 9
      appa = Avatar.find_by(name: "Appa")
      puts "that you are #{appa.name}, #{appa.desc}".bold
      when 10
      mai = Avatar.find_by(name: "Mai")
      puts "that you are #{mai.name}, #{mai.desc}".bold
      when 11
      suki = Avatar.find_by(name:"Suki")
      puts "that you are #{suki.name}, #{suki.desc}".bold 
      when 12
      june = Avatar.find_by(name: "June")
      puts "that you are #{june.name}, #{june.desc}".bold  
      when 13
      bumi = Avatar.find_by(name: "Bumi")
      puts "that you are #{bumi.name}, #{bumi.desc}".bold  
      when 14
      sokka = Avatar.find_by(name: "Sokka")
      puts "that you are #{sokka.name}, #{sokka.desc}".bold  
      when 15
      combustionman = Avatar.find_by(name: "The Combustion Man")
      puts "that you are #{combustionman.name}, #{combustionman.desc}".bold  
      when 16
      kuruk = Avatar.find_by(name: "Kuruk")
      puts "that you are #{kuruk.name}, #{kuruk.desc}".bold  
      when 17
      tenzin = Avatar.find_by(name: "Tenzin")
      puts "that you are #{tenzin.name}, #{tenzin.desc}".bold  
      when 18
      jet = Avatar.find_by(name: "Jet")
      puts "that you are #{jet.name}, #{jet.desc}".bold  
      when 19
      gyatso= Avatar.find_by(name: "Gyatso")
      puts "that you are #{gyatso.name}, #{gyatso.desc}".bold  
      when 20
      korra = Avatar.find_by(name: "Korra")
      puts "that you are #{korra.name}, #{korra.desc}".bold  
      when 21
      zuko = Avatar.find_by(name: "Zuko")
      puts "that you are #{zuko.name}, #{zuko.desc}".bold  
      when 22
      toph = Avatar.find_by(name :"Toph")
      puts "that you are #{toph.name}, #{toph.desc}".bold  
      when 23
      azula = Avatar.find_by(name: "Azula")
      puts "that you are #{azula.name}, #{azula.desc}".bold 
      when 24
      roku = Avatar.find_by(name: "Roku")
      puts "that you are #{roku.name}, #{roku.desc}".bold  
      when 25
      kyoshi = Avatar.find_by(name: "Kyoshi")
      puts "that you are #{kyoshi.name}, #{kyoshi.desc}".bold  
      when 26
      iroh = Avatar.find_by(name: "Iroh")
      puts "that you are #{iroh.name}, #{iroh.desc}".bold  
      when 27
      yangchen = Avatar.find_by(name: "Yangchen")
      puts "that you are #{yangchen.name}, #{yangchen.desc}".bold  
      when 28
      katara = Avatar.find_by(name: "Katara")
      puts "that you are #{katara.name}, #{katara.desc}".bold  
      when 29
      aang = Avatar.find_by(name: "Aang")
      puts "that you are #{aang.name}, #{aang.desc}".bold  
      when 30
      wan = Avatar.find_by(name: "Wan")
      puts "that you are #{wan.name}, #{wan.desc}".bold  
      when >= 50
      cabbageman = Avatar.find_by(name: "The Cabbage Man")
      puts "that you are #{cabbageman.name}, #{cabbageman.desc}".bold 
    end
  end




#   private

  
# end
