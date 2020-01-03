class Round {

  constructor(user, id = 1){
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
    this.header.innerHTML = `${this.user.username} and the Sorcerer's Stone`
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
    console.log("You have submitted your round 1 answers")
    console.log(this.user)
    // create a new instance of user_answer for each question when user clicks submit. If the number of times  user_input === correct_answer >= 3, move onto next round. If the number of times user_input === correct_answer < 3, game over.
  }

  getUserAnswers() {

    // how can I get access to the round here?

    const possible_answers = Array.from(document.querySelectorAll(".answer"))

    const answers = []

    possible_answers.map(possible_answer => {
      if (possible_answer.checked) {
        answers.push(possible_answer.value)
      }
    })
    console.log("I'm in getUserAnswers")
    console.log(this.user)

    console.log(answers)

    console.log("I'm leaving getuseranswers")
    // const userAnswer = new UserAnswer()
    this.fetchRound()
  }


  createUserAnswer(event) {
    event.preventDefault()
    console.log("Creating UserAnswer Here")
    console.log(this)
  }

  fetchRound() {
    this.adapter.getRound()
      .then(round => {
        // console.log(round.questions[0].answer_a)
        console.log(round)
        // need to create a userAnswer for each question
        const userAnswer = new UserAnswer(this.user, round)
        // console.log(round)
      })
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
