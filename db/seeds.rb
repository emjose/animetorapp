# 1. for each instance in the seed file, Model.

Avatar.destroy_all
Quiz.destroy_all
User.destroy_all
Avatar.reset_pk_sequence
Quiz.reset_pk_sequence
User.reset_pk_sequence

# 2. keep avatar instances in the seed file, use Avatar.find_by()

#Avatar Characters
# sozin = Avatar.create(avatar_id: “Sozin, the intelligent yet ruthless Fire Lord and instigator of the Hundred Year War.”)
sozin = Avatar.create(name: "Sozin", desc: "the intelligent yet ruthless Fire Lord and instigator of the Hundred Year War.") 
# sozin_id = Avatar.find_by(name: "Sozin").id

# ozai = Avatar.create(avatar_id: “Ozai, the strong and power-hungry ruler of the Fire Nation with an almost unmatchable mastery of firebending.”)
ozai = Avatar.create(name: "Ozai", desc: "the strong and power-hungry ruler of the Fire Nation with an almost unmatchable mastery of firebending.")
# ozai_id = Avatar.find_by(name: "Ozai").id

# hama = Avatar.create(avatar_id: “Hama, a seemingly gentle and kind old woman, but you harbor a dark skill of bending blood to your will.”)
hama = Avatar.create(name: "Hama", desc: "a seemingly gentle and kind old woman, but you harbor a dark skill of bending blood to your will.")
# hama_id = Avatar.find_by(name: "Hama").id

# momo = Avatar.create(avatar_id: “Momo, the winged lemur companion of Avatar Aang. You are curious, playful, intelligent, and most of all, loyal.”)
momo = Avatar.create(name: "Momo", desc: "the winged lemur companion of Avatar Aang. You are curious, playful, intelligent, and most of all, loyal.")
#momo_id = Avatar.find_by(name: "Momo").id

# appa = Avatar.create(avatar_id: “Appa, the loyal and trusted Sky bison of Avatar Aang. Despite numerous obstacles, you persevere and rise to the occasion.”)
appa = Avatar.create(name: "Appa", desc: "the loyal and trusted Sky bison of Avatar Aang. Despite numerous obstacles, you persevere and rise to the occasion.")
# appa_id = Avatar.find_by(name: "Appa").id

# mai = Avatar.create(avatar_id: “Mai, a master markswoman of knives and arrows. You are outwardly stoic and brooding, but you are flowing with compassion and mercy.”)
mai = Avatar.create(name: "Mai", desc: "a master markswoman of knives and arrows. You are outwardly stoic and brooding, but you are flowing with compassion and mercy.")
# mai_id = Avatar.find_by(name: "Mai").id

# suki = Avatar.create(avatar_id: “Suki, a woman of action who excels in hand-to-hand combat. You are a fast learner and possess a strong sense of duty.”)
suki = Avatar.create(name: "Suki", desc: "a woman of action who excels in hand-to-hand combat. You are a fast learner and possess a strong sense of duty.")
# suki_id = Avatar.find_by(name: "Suki").id

# june = Avatar.create(avatar_id: “June, an exceptional bounty hunter with a sarcastic wit. You have no allegiance to anyone, except for the highest bidder of your services.”)
june = Avatar.create(name: "June", desc: "an exceptional bounty hunter with a sarcastic wit. You have no allegiance to anyone, except for the highest bidder of your services.")
# june_id = Avatar.find_by(name: "June").id

# bumi = Avatar.create(avatar_id: “Bumi, the rambunctious son of Avatar Aang. You are at times reckless, but you always have the best interests of your loved ones.”)
bumi = Avatar.create(name: "Bumi", desc: "the rambunctious son of Avatar Aang. You are at times reckless, but you always have the best interests of your loved ones.")
# bumi_id = Avatar.find_by(name: "Bumi").id

# sokka = Avatar.create(avatar_id: “Sokka, the skeptical and abrasive brother of Katara. You learn to be flexible over time, and you have no shortage of loyalty.”
sokka = Avatar.create(name: "Sokka", desc: "the skeptical and abrasive brother of Katara. You learn to be flexible over time, and you have no shortage of loyalty.")
# sokka_id = Avatar.find_by(name: "Sokka").id

# combustionman = Avatar.create(avatar_id: “The Combustion Man, a masterful and silent firebending assassin with a unique ability to detonate large explosions from your third-eye tattoo.”)
combustionman = Avatar.create(name: "The Combustion Man", desc: "a masterful and silent firebending assassin with a unique ability to detonate large explosions from your third-eye tattoo.")
# combustionman_id = Avatar.find_by(name: "The Combustion Man").id

# kuruk = Avatar.create(avatar_id: “Kuruk, the Water Tribe-born Avatar. At times you are your own worst enemy, but you are widely loved by your friends and family.")
kuruk = Avatar.create(name: "Kuruk", desc: "the Water Tribe-born Avatar. At times you are your own worst enemy, but you are widely loved by your friends and family.")
# kuruk_id = Avatar.find_by(name: "Kuruk").id

# tenzin = Avatar.create(avatar_id: “Tenzin, the youngest son of Avatar Aang. You are an airbending master and stern in nature, but a sense of humor does slip through at times.”
tenzin = Avatar.create(name: "Tenzin", desc: "the youngest son of Avatar Aang. You are an airbending master and stern in nature, but a sense of humor does slip through at times.")
# tenzin_id = Avatar.find_by(name: "Tenzin").id

# jet = Avatar.create(avatar_id: “Jet, the young leader of the Earth Kingdom Freedom Fighters. Although you are fueled by revenge, you have a magnetic, charismatic personality.”)
jet = Avatar.create(name: "Jet", desc: "the young leader of the Earth Kingdom Freedom Fighters. Although you are fueled by revenge, you have a magnetic, charismatic personality.")
# jet_id = Avatar.find_by(name: "Jet").id

# gyatso = Avatar.create(avatar_id: “Gyatso, the kind, wise mentor of Avatar Aang. You are excellent at airbending and you balance your wisdom with a great sense of humor.”)
gyatso = Avatar.create(name: "Gyatso", desc: "the kind, wise mentor of Avatar Aang. You are excellent at airbending and you balance your wisdom with a great sense of humor.")
#gyatso_id = Avatar.find_by(name: "Gyatso").id

# korra = Avatar.create(avatar_id: “Korra, the immediate successor of Avatar Aang. Extremely powerful at bending all elements, you are fierce and possess strong loyalty towards your loved ones and duty as the Avatar.”)
korra = Avatar.create(name: "Korra", desc: "the immediate successor of Avatar Aang. Extremely powerful at bending all elements, you are fierce and possess strong loyalty towards your loved ones and duty as the Avatar.")
# korra_id = Avatar.find_by(name: "Korra").id

# zuko = Avatar.create(avatar_id: “Zuko, the prodigal son of Fire Lord Ozai. Despite internal struggle and turmoil, you are driven by hope and achieve great wisdom.”)
zuko = Avatar.create(name: "Zuko", desc: "the prodigal son of Fire Lord Ozai. Despite internal struggle and turmoil, you are driven by hope and achieve great wisdom.")
# zuko_id = Avatar.find_by(name: "Zuko").id

# toph = Avatar.create(avatar_id: “Toph, a powerful, earthbending master. Your visual impairment is of no hindrance, and you are confident, honest, and full of no-nonsense.”)
toph = Avatar.create(name: "Toph", desc: "a powerful, earthbending master. Your visual impairment is of no hindrance, and you are confident, honest, and full of no-nonsense.")
# toph_id = Avatar.find_by(name: "Toph").id

# azula = Avatar.create(avatar_id: “Azula, a firebending prodigy and sister of Zuko. At times lacking empathy, you overcome your insecurities and discover a strong sense of self.”)
azula = Avatar.create(name: "Azula", desc: "a firebending prodigy and sister of Zuko. At times lacking empathy, you overcome your insecurities and discover a strong sense of self.")
# azula_id = Avatar.find_by(name: "Azula").id

# roku = Avatar.create(avatar_id: “Roku, the wise Fire Nation-born Avatar. You are self-critical and regretful, but you are warm-hearted, disciplined, and wise.”)
roku = Avatar.create(name: "Roku", desc: "the wise Fire Nation-born Avatar. You are self-critical and regretful, but you are warm-hearted, disciplined, and wise.")
# roku_id = Avatar.find_by(name: "Roku").id

# kyoshi = Avatar.create(avatar_id: “Kyoshi, the Earth Kingdom-born Avatar. You are a merciless pursuer of justice, and you have a far-reaching legacy of fear and admiration.”)
kyoshi = Avatar.create(name: "Kyoshi", desc: "the Earth Kingdom-born Avatar. You are a merciless pursuer of justice, and you have a far-reaching legacy of fear and admiration.")
# kyoshi_id = Avatar.find_by(name: "Kyoshi").id

# iroh = Avatar.create(avatar_id: “Iroh, a retired Fire Nation General and compassionate uncle of Zuko. You are wise, easygoing, and you live life to the fullest.”)
iroh = Avatar.create(name: "Iroh", desc: "a retired Fire Nation General and compassionate uncle of Zuko. You are wise, easygoing, and you live life to the fullest.")
# iroh = Avatar.find_by(name: "Iroh").id

# yangchen = Avatar.create(avatar_id: “Yangchen, the Air Nomad Avatar before Aang. You are an encouraging and empathetic leader, and you are known for your great compassion.”)
yangchen = Avatar.create(name: "Yangchen", desc: "the Air Nomad Avatar before Aang. You are an encouraging and empathetic leader, and you are known for your great compassion.")
#yangchen_id = Avatar.find_by(name: "Yangchen").id

# katara = Avatar.create(avatar_id: “Katara, a waterbending master. You are compassionate, and your inner strength drives your determination to fight for your loved ones.”)
katara = Avatar.create(name: "Katara", desc: "a waterbending master. You are compassionate, and your inner strength drives your determination to fight for your loved ones.")
# katara_id = Avatar.find_by(name: "Katara").id

# aang = Avatar.create(avatar_id: “Aang, the Air Nomad Avatar. As a reluctant hero, you are somewhat naïve and carefree, but you rise to the duty as the Avatar to bring peace to the World of the Benders.”)
aang = Avatar.create(name: "Aang", desc: "the Air Nomad Avatar. As a reluctant hero, you are somewhat naïve and carefree, but you rise to the duty as the Avatar to bring peace to the World of the Benders.")
# aang_id = Avatar.find_by(name: "Aang").id

# wan = Avatar.create(avatar_id: “Wan, the very first Avatar. You are initially reckless and temperamental, but only because you feel that others are being treated unjustly. You are humble, brave, and achieve full mastery of Air, Water, Earth, and Fire!")
wan = Avatar.create(name: "Wan", desc: "the very first Avatar. You are initially reckless and temperamental, but only because you feel that others are being treated unjustly. You are humble, brave, and achieve full mastery of Air, Water, Earth, and Fire!")
# wan_id = Avatar.find_by(name: "Wan").id

# cabbageman = Avatar.create(avatar_id: “The Cabbage Man! Also known as the cabbage merchant, you are constantly plagued by the misfortune of having your cabbage cart continually destroyed.”)
cabbageman = Avatar.create(name: "The Cabbage Man", desc: "Also known as the cabbage merchant, you are constantly plagued by the misfortune of having your cabbage cart continually destroyed.")
cabbageman_id = Avatar.find_by(name: "The Cabbage Man").id


#Minor Characters as User instances, for method find other users?

joodee = User.create(name: "Joo Dee")
# joodee_id = User.find_by(name: "Joo Dee").id

princessyue = User.create(name: "Princess Yue")
# princessyue_id = User.find_by(name: "Princess Yue").id

grangran = User.create(name: "Gran-Gran")
# grangran_id = User.find_by(name: "Gran-Gran").id

auntwu = User.create(name: "Aunt Wu")
# auntwu_id = User.find_by(name: "Aunt Wu").id

chiefhakoda = User.create(name: "Chief Hakoda")
# chiefhakoda_id = User.find_by(name: "Chief Hakoda").id

arnook = User.create(name: "Arnook")
# arnook_id = User.find_by(name: "Arnook").id

theboulder = User.create(name: "The Boulder")
# theboulder_id = User.find_by(name: "The Boulder").id

haru = User.create(name: "Haru")
# haru_id = User.find_by(name: "Haru").id

teo = User.create(name: "Teo")
# teo_id = User.find_by(name: "Teo").id

onji = User.create(name: "On Ji")
# onji_id = User.find_by(name: "On Ji").id

binding.pry

#comment

# Welcome to the World of Benders! Its been 100 years since the last Avatar has vanished.
# The Avatar is needed to restore balance amongst the five nations of the World: Air, Water, Earth, Fire, and Code!
# After the disappearance of the Avatar, the Code Benders launched a full lab attack, 
# in an effort to spread code around the world.
# Use this divination test to discover who you are, and
# build a team of Benders to defeat the labs and restore balance to the World!


# 15 questions displayed
# 10 Avatar Questions (value of 1 each correct answer)
# 5 Flatiron Questions (value of 1 to 4 each answer)
# minimum of 5 points to maximum of 30 points
# Franklin is 0 points / cabbageman resets the score to 0

#cabbageman         0
#sozin              5 
#ozai               6
#hama               7
#momo               8
#appa               9
#mai                10
#suki               11
#june               12
#bumi               13
#sokka              14
#combustion_man     15
#kuruk              16
#tenzin             17
#jet                18
#gyatso             19
#korra              20
#zuko               21
#toph               22
#azula              23
#roku               24
#kyoshi             25
#iroh               26
#yangchen           27
#katara             28
#aang               29
#wan                30
#
#
#
#





# Plant.destroy_all
# Person.destroy_all
# PlantParenthood.destroy_all
# Plant.reset_pk_sequence
# Person.reset_pk_sequence
# PlantParenthood.reset_pk_sequence

# ########### different ways to write your seeds ############







# # 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
# basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
# sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
# pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)

# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:







# Plant.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer plant", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
# ## b. by interating over an array of hashes:
# plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake plant", bought: 20170910, color: "dark green"},
#     {name: "polka dot plant", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# plants.each{|hash| Plant.create(hash)}






# # 3. Use Faker and mass create
# ## step 1: write a method that creates a person
# def create_person
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     person = Person.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(person)
#     plants_number = rand(1..4)
#     plants_number.times do 
#         PlantParenthood.create(
#             plant_id: Plant.all.sample.id, 
#             person_id: person.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

# ## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


# puts "🔥 🔥 🔥 🔥 "