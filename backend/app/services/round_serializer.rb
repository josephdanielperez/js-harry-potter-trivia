class RoundSerializer

  def initialize(round_object)
    @round = round_object
  end

  def to_serialized_json
    @round.to_json(:include => {
      :questions => {:only => [:id, :question_number, :content, :answer_a, :answer_b, :answer_c, :answer_d, :correct_answer, :round_id]}
    })
  end

end
