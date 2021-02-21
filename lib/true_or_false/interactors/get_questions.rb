require 'hanami/interactor'

class GetQuestions
  include Hanami::Interactor

  require 'rest_client'

  URL = 'https://beta-trivia.bongo.best/?type=boolean'.freeze
  PARAMS = { content_type: :json, verify_ssl: :none }.freeze
  DEFAULT_BODY = { question: '', correct_answer: false }.freeze

  expose :question

  def self.call
    response = RestClient.get(URL, PARAMS)
    @question = parsed_body(response)
  end

  private

  def self.parsed_body(response)
    return DEFAULT_BODY unless response.code == 200

    begin
      JSON.parse(response.body).first
    rescue
      DEFAULT_BODY
    end
  end
end
