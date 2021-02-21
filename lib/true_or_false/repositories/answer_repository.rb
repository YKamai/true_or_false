class AnswerRepository < Hanami::Repository
  def all_answers
    answers.order { created_at.desc }
  end

  def limit_answers_to(number)
    return if all_answers.count <= number

    all_answers.to_a[number, all_answers.count + 1].each do |answer|
      delete(answer.id)
    end
  end
end
