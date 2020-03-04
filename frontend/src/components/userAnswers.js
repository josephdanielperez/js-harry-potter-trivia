class UserAnswers {

  constructor(round) {
    this.adapter = new UserAnswersAdapter();
    // this is necessary to get access to the round, the round's user, and the correct user's answers
    this.round = round;
    console.log(round.user.id)
    this.fetchAndLoadUserAnswers();
  }

  // why am I passing something in here?
  fetchAndLoadUserAnswers(userAnswer) {
    this.adapter.getUserAnswers()
      .then(userAnswers => {
        this.renderUserAnswers(userAnswers);
      });
  }

  renderUserAnswers(userAnswers) {
    for (let i = 1; i < 8; i++) {
      let correctAnswers = 0;
      const p = document.createElement("p");
      p.className = "user_input_info";
      p.innerHTML = "";

      // switch (i) {
      //   case 1:
      //     DOMElements.r1.appendChild(p);
      //     break;
      //   case 2:
      //     DOMElements.r2.appendChild(p);
      //     break;
      //   case 3:
      //     DOMElements.r3.appendChild(p);
      //     break;
      //   case 4:
      //     DOMElements.r4.appendChild(p);
      //     break;
      //   case 5:
      //     DOMElements.r5.appendChild(p);
      //     break;
      //   case 6:
      //     DOMElements.r6.appendChild(p);
      //     break;
      //   case 7:
      //     DOMElements.r7.appendChild(p);
      // }

      for (const userAnswer of userAnswers) {
        if (this.round.user.id == userAnswer.user_id) {

          // what am I using this for?
          const li = document.createElement("li");

          if (userAnswer.round_id === i) {
            if (userAnswer.user_input === userAnswer.correct_answer) {
              correctAnswers++;
            } else {
              let q = new Question(userAnswer.question_id);
              q.fetchQuestion(userAnswer);
            };
          };
        };

        p.innerHTML = `${correctAnswers} of 7 questions correct`;

      };
    };
  }
}
