module Web
  module Views
    module Answers
      class Index
        include Web::View

        def app_name
          'True or False'
        end

        def answer_button(value)
          form_for :answer, routes.answers_path do
            hidden_field :question, value: question['question']
            hidden_field :user_answer, value: value
            hidden_field :correct_answer, value: question['correct_answer'].downcase
            submit value.to_s.capitalize, class: value.to_s.downcase
          end
        end
      end
    end
  end
end
