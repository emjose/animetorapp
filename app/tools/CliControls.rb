module CliControls

    $prompt = TTY::Prompt.new

    def set(questions)
        $prompt.select(questions)
    end

    # def down_ask(str)
    #  $prompt.ask(str).downcase
    # end

    def yes_no(question_str)
        $prompt.yes?(question_str) do |q|
        q.suffix "Yah/No it's too late"
        q.positive "Yes Lets End This War!"
        q.negative "No I Want the Fire 🔥🔥🌪🌪🌊🌊🌊🌊🌍🌎Nation to win"
        end
    end