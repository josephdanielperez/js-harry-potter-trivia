class UserAnswersAdapter {

  constructor() {
    this.baseUrl = `http://localhost:3000/api/v1/user_answers`;
  }

  async getUserAnswers() {
    const response = await fetch(this.baseUrl);
    return await response.json();
  }

  async createUserAnswer(userAnswer) {
    const user_answer = {
      user_id: userAnswer.user_id,
      round_id: userAnswer.round_id,
      question_id: userAnswer.question_id,
      correct_answer: userAnswer.correct_answer,
      user_input: userAnswer.user_input
    };

    const response = await fetch(this.baseUrl, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: JSON.stringify({
        user_answer
      })
    });

    return await response.json();
  }

}
