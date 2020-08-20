

  question1 = [ "How many Nations exist in The Avatar Series?
  ", %w(6 2 3 4) ]
  question2 = ["Where did Sokka and Katara find Aang?", ["Under the ocean", "In A Shipwreck", "In a Ball of Ice", "By his old air Temple"]]
  question3 = ["Who was the avatar before Aang?", %w( Korra Azula Roku Yengchen
  )]
  question4 =["Who was Aang's mentor and Guardian at the air temple?", %w(Ganchu Gyatso Moi-Fei Jeong-jong )]
  question5 = ["Select the Firebender from below", %w(mai pipsqueak bumi appa)]
  question6 = ["Select the White Lotus official from below?", %w(Zukko mai Iroh Aang) ]
  question7 = ["Who was the first avatar", %w(Woohun, wan, Won, Qwon)]
  question8 = ["How many labs were you able to complete this week?", %w(>20 20-30 31-40 40+ )]
  question9 = ["How often do you smile when looking at the computer?", ["Not at all since School started",
     "Never when i'm doing assignments", "Only when i’m doing assignments", "All the Time"]]
  question10 = ["What is your favourite part about the school day", %w(Ending! Stand-downs/Feelings Lectures Labs)]
  question11 = ["What is the Official Game of the Code-benders?", %w(Animator Fartnite Learn-IDE Procrastination	)]
  question12 = ["Who were the first earthbenders?", %w( The-dragons Toph-ancestors The-BadgerMoles Avatar-Kyoshi
  )]
  question13 = ["Who was the instructor that left shortly after we started", %w(Mike Sylwia Larry Jack)]
  question14 = ["What thought Aang how to energy-bend?", %w(Twin-Dragon Great-Owl Iron-turtle Lion-Turtle	)]
  question15 = ["Who gave up their life to restore the bridge of Ying and Yan In the spirit and physical world?"
, %w(Sokka Taaluk Princess-Yue	Queen-Leigh)]






#comment

#  Welcome to the World of Benders! Its been 100 years since the last Avatar has vanished.
#  The Avatar is needed to restore balance amongst the five nations of the World: Air, Water, Earth, Fire, and Code!
#  After the disappearance of the Avatar, the Code Benders launched a full lab attack, 
#  in an effort to spread code around the world.
#  Use this divination test to discover who you are, and
#  build a team of Benders to defeat the labs and restore balance to the World!


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





Plant.destroy_all
Person.destroy_all
PlantParenthood.destroy_all
Plant.reset_pk_sequence
Person.reset_pk_sequence
PlantParenthood.reset_pk_sequence

########### different ways to write your seeds ############







# 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)

# 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
## a. by passing an array of hashes:







Plant.create([
    {name: "Corn Tree", bought: 20170203, color: "green"},
    {name: "Prayer plant", bought: 20190815, color: "purple"},
    {name: "Cactus", bought: 20200110, color: "ugly green"}
])
## b. by interating over an array of hashes:
plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
    {name: "Photos", bought: 20170910, color: "green"},
    {name: "Dragon tree", bought: 20170910, color: "green"},
    {name: "Snake plant", bought: 20170910, color: "dark green"},
    {name: "polka dot plant", bought: 20170915, color: "pink and green"},
    {name: "Cactus", bought: 20200517, color: "green"}]

plants.each{|hash| Plant.create(hash)}






# 3. Use Faker and mass create
## step 1: write a method that creates a person
def create_person
    free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

    person = Person.create(
        name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
        free_time: free,
        age: rand(11...70)
    )
end

## step 2: write a method that creates a joiner
def create_joiners(person)
    plants_number = rand(1..4)
    plants_number.times do 
        PlantParenthood.create(
            plant_id: Plant.all.sample.id, 
            person_id: person.id, 
            affection: rand(101), 
            favorite?: [true, false].sample
        )
    end
end

## step 3: invoke creating joiners by passing in an instance of a person
10.times do     
    create_joiners(create_person)
    ##### ALTERNATIVE:
    # person = create_person
    # create_joiners(person)
end

indoor = Category.create(name: "indoors")

Plant.update(category_id: indoor.id)


puts "🔥 🔥 🔥 🔥 "