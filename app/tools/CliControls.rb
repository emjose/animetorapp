module CliControls

    $prompt = TTY::Prompt.new

    def set(questions, answer)
        $prompt.select(questions,answer)
    end

    def down_ask(str)
     $prompt.ask(str).downcase
    end

    def yes_no(question_str)
        $prompt.yes?(question_str) do |q|
        q.suffix "Yah/No it's too late"
        q.positive "Yah!"
        q.negative "No it's too late"
        end
    end