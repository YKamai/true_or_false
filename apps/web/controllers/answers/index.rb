module Web
  module Controllers
    module Answers
      class Index
        include Web::Action

        expose :question, :answers

        def call(params)
          @answers = AnswerRepository.new.all_answers.to_a
          @question = GetQuestions.call
        end
      end
    end
  end
end
