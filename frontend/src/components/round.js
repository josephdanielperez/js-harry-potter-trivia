class Round {

  constructor(user, id){
    // is this needed?
    this.questions = []
    this.roundBindingsAndEventListeners()
    // is this okay to do since my Round model doesn't have a user attribute????
    this.user = user
    // need to figure out how to change the ID for the next round
    this.id = id
    this.adapter = new RoundsAdapter(this)

    // this.fetchAndLoadRound()
  }

  // should anything regarding questions be moved to question.js????


  roundBindingsAndEventListeners() {
    this.start_button = document.getElementById("start_button")
    // why is it not this.createUser() - with parenthesis
    // hard bind this to the round when we execute fetchAndLoadRound, so when we access this from fetchAndLoadRound it is the Round class
    this.start_button.addEventListener("click", this.fetchAndLoadRound.bind(this));
    this.header = document.getElementById("intro");
    this.body = document.querySelector("body");
    this.p = document.querySelector("p");
    this.submit_round = document.createElement("button")
    this.submit_round.id = "submit_round"
    this.submit_round.innerHTML = "Submit Round 1 Answers"

    // hard bind this to the round when we execute submitAnswers, so when we access this from submitAnswers it is the Round class
    this.submit_round.addEventListener("click", this.submitAnswers.bind(this));
    // this.quiz = document.getElementById("quiz_container")

  }

  fetchAndLoadRound(event) {
    event.preventDefault();
    this.adapter.getRound()
      .then(round => {
        // console.log(round.questions[0].answer_a)
        this.renderQuestions(round)
        // console.log(round)
      })
  }

  // this.start_button.addEventListener("click", function(event) {
  //   event.preventDefault();
  //
  //
  //   return fetch(`http://localhost:3000/api/v1/rounds/${round.id}`)
  //     .then(response => response.json())
  //     .then(round => console.log(round.questions))
  //
  // })


  renderQuestions(round) {
    this.start_button.style.display = "none"
    if (round.id == 1) {
      this.header.innerHTML = `${this.user.username} and the Sorcerer's Stone`
    } else if (round.id == 2) {
      this.header.innerHTML = `${this.user.username} and the Chamber of Secrets`
    }
    
    this.p.innerHTML = ""
    const form = document.createElement("form")

    // this.quiz.style.display = "visible"

    // do I want to add all HTML elements here, or add a form to index.html and keep it hidden until this point?

    round.questions.forEach(question => {
      const q = document.createElement("p")

      // is there not a way to add text to the radio button itself? Tried updating the innerHTML of answer_a, and it looked correct in the elements but text wasn't showing up in the browser.
      const answer_a = document.createElement("input")
      const answer_a_text = document.createElement("label")

      const answer_b = document.createElement("input")
      const answer_b_text = document.createElement("label")

      const answer_c = document.createElement("input")
      const answer_c_text = document.createElement("label")

      const answer_d = document.createElement("input")
      const answer_d_text = document.createElement("label")


      q.innerHTML = question.content

      answer_a.setAttribute("type", "radio");
      answer_a.setAttribute("value", "A")
      answer_a.setAttribute("name", question.id)
      answer_a.setAttribute("class", "answer")
      answer_a.setAttribute("id", `${question.id}` + "A")
      answer_a_text.innerText = ` ${question.answer_a} \n`

      answer_b.setAttribute("type", "radio");
      answer_b.setAttribute("value", "B")
      answer_b.setAttribute("name", question.id)
      answer_b.setAttribute("class", "answer")
      answer_b.setAttribute("id", `${question.id}` + "B")
      answer_b_text.innerText = ` ${question.answer_b} \n`

      answer_c.setAttribute("type", "radio");
      answer_c.setAttribute("value", "C")
      answer_c.setAttribute("name", question.id)
      answer_c.setAttribute("class", "answer")
      answer_c.setAttribute("id", `${question.id}` + "C")
      answer_c_text.innerText = ` ${question.answer_c} \n`

      answer_d.setAttribute("type", "radio");
      answer_d.setAttribute("value", "D")
      answer_d.setAttribute("name", question.id)
      answer_d.setAttribute("class", "answer")
      answer_d.setAttribute("id", `${question.id}` + "D")
      answer_d_text.innerText = ` ${question.answer_d} \n\n`


      this.body.appendChild(form)
      form.appendChild(q)

      form.appendChild(answer_a)
      form.appendChild(answer_a_text)

      form.appendChild(answer_b)
      form.appendChild(answer_b_text)

      form.appendChild(answer_c)
      form.appendChild(answer_c_text)

      form.appendChild(answer_d)
      form.appendChild(answer_d_text)
    })

    form.appendChild(this.submit_round)

  }

  submitAnswers(event) {
    event.preventDefault()
    this.getUserAnswers()

    // creating the instance in the Rails DB. This code is incomplete...
    // createUserAnswer(event) {
    //   event.preventDefault()
    //   this.adapter.createUserAnswer()
    //   // gets parsed JSON from UsersAdapter createUser()
    //     .then(userAnswer => {
    //       console.log(userAnswer)
    //   })
    // }



    // console.log("You have submitted your round 1 answers")
    // console.log(this.user)
    // create a new instance of user_answer for each question when user clicks submit. If the number of times  user_input === correct_answer >= 3, move onto next round. If the number of times user_input === correct_answer < 3, game over.
  }

  getUserAnswers() {

    // how can I get access to the round here?

    const possible_answers = Array.from(document.querySelectorAll(".answer"))

    const answers = []

    possible_answers.map(possible_answer => {
      if (possible_answer.checked) {
        answers.push({question: possible_answer.name, input: possible_answer.value})

      }
    })
    // console.log("I'm in getUserAnswers")
    // console.log(this.user)


    this.adapter.getRound()
      .then(round => {
        // need to have access to the answers_array from getUserAnswers to complete the data needed in the UserAnswer instance

        const userAnswers = []
        round.questions.forEach(question => {

          // let answer = array1.find(element => element > 10);

          let user_input = answers.find(answer => answer.question === question.id.toString())
          // console.log(answer)
          // console.log(round)
          const userAnswer = new UserAnswer(this.user, round, question, user_input)

          // console.log(answers)
          userAnswers.push(userAnswer)

          // let correctAnswers = 0
          //
          // if (userAnswer.correct_answer === userAnswer.user_input) {
          //   correctAnswers += 1
          // }
          //
          // console.log(correctAnswers)


        })

        this.numberOfCorrectAnswers(userAnswers)


      })

    //
    // console.log(answers)

    // console.log("I'm leaving getuseranswers")
    // const userAnswer = new UserAnswer()
    // this.fetchRound()
  }

  numberOfCorrectAnswers(userAnswers) {
    let correctAnswers = []

    userAnswers.forEach(userAnswer => {
      if (userAnswer.correct_answer === userAnswer.user_input) {
        correctAnswers.push(userAnswer.user_input)
      }

    })

    if (correctAnswers.length >= 3) {
      const round = new Round(this.user, this.id + 1)
      console.log("Congratulations, you will move on to the next round")
      this.renderQuestions(round)
    } else {
      console.log("Sorry, Voldemort wins.")
    }

  }

  createUserAnswer(event) {
    event.preventDefault()
    // console.log("Creating UserAnswer Here")
    // console.log(this)
  }

  fetchRound() {
    // this.adapter.getRound()
    //   .then(round => {
    //     // need to have access to the answers_array from getUserAnswers to complete the data needed in the UserAnswer instance
    //     round.questions.forEach(question => {
    //       console.log(round)
    //       const userAnswer = new UserAnswer(this.user, round, question)
    //       console.log(userAnswer)
    //     })
    //   })
  }


  // createUser(event) {
  //   event.preventDefault()
  //   const value = this.username.value
  //
  //   // take the above value and make a post request using the adapter
  //
  //   this.adapter.createUser(value)
  //   // gets parsed JSON from UsersAdapter createUser()
  //     .then(user => {
  //       console.log(user)
  //       this.renderUserStartPage(user)
  //   })
  // }

  // createRound(event) {
  //   event.preventDefault()
  //   this.fetchAndLoadRound()
  // //   this.adapter.createRound(value)
  // //   // gets parsed JSON from UsersAdapter createUser()
  // //     .then(round => {
  // //       // creates the new user and pushes the user into the users array that exists. not sure this is actually needed
  // //       this.renderRound()
  // //   })
  // //
  // }


}
