# module Quizzer
#     include CliControls
def quizzed
    @answer_total = []

    prompt = TTY::Prompt.new
    
    question1 = [ "How many Nations exist in The Avatar Series?
    ", %w(6 2 3 4) ]
    question2 = ["Where did Sokka and Katara find Aang?", ["Under the ocean", "In A Shipwreck", "In a Ball of Ice", "By his old air Temple"]]
    question3 = ["Who was the avatar before Aang?", %w(Korra Azula Roku Yengchen
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
    question15 = ["Who gave up their life to restore the bridge of Ying and Yan In the spirit and physical world?", %w(sokka taaluk princess-yue queen-leigh)]
    # yes_no("Do you consider the name Franklin to be exceptionally cool!")
    # return @answer_total = 0

        quiz = [question1, question2, question3, question4, question5, question6, question15,
   question7, question8, question9, question10, question11, question12, question13, question14, question15]

def question(question_array)
    answer = prompt.select(question_array[0]) do |menu|
         menu.choice question_array[1][0], 0
         menu.choice question_array[1][1], 1
         menu.choice question_array[1][2], 0
         menu.choice question_array[1][3], 0
    end
end  
def make_quiz(quizzes)
    counter = 0
    while counter < quizzes.length do 
        question(quizzes[counter])
        @answer_total << answer
        binding.pry
        counter += 1
    end
end

        # end

        # def get_quiz

        # end

        # def results

        # end

        make_quiz(quiz)
    end

quizzed



