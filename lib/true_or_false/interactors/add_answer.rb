require 'hanami/interactor'

class AddAnswer
  include Hanami::Interactor

  MAX_ANSWERS = 5

  expose :answer

  def initialize(repository: AnswerRepository.new)
    @repository = repository
  end

  def call(answer_params)
    @answer = @repository.create(answer_params)
    @repository.limit_answers_to(MAX_ANSWERS)
  end
end
