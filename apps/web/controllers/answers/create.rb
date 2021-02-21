module Web
  module Controllers
    module Answers
      class Create
        include Web::Action

        params do
          required(:answer).schema do
            required(:question).filled(:str?)
            required(:user_answer).filled(:str?)
            required(:correct_answer).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            AddAnswer.new.call(
              question: param(:question),
              valid_answer: param(:correct_answer),
              result: result
            )
          end
          redirect_to routes.answers_path
        end

        def result
          return 'Right' if param(:user_answer) == param(:correct_answer)

          'Wrong'
        end

        def param(name)
          params.get(:answer, name.to_sym)
        end
      end
    end
  end
end
