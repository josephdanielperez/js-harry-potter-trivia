class DOMElements {

  // used in User
  static get body() { return document.querySelector("body") };
  static get header() { return document.getElementById("header") };
  static get newUserForm() { return document.getElementById("new_user_form") };
  static get username() { return document.getElementById("username") };
  static get house() { return document.getElementById("house") };

  // used in Round
  static get startButton() { return document.getElementById("start_button") };
  static get title() { return document.getElementById("title") };
  static get p() { return document.querySelector("p") };
  static get note() { return document.getElementById("note") };
  static get container() { return document.getElementById("container") };
  static get submitRound() { return document.getElementById("submit_round") };

  // used in UserAnswers
  static get p1() { return document.getElementById("p1") };
  static get p2() { return document.getElementById("p2") };
  static get p3() { return document.getElementById("p3") };
  static get p4() { return document.getElementById("p4") };
  static get p5() { return document.getElementById("p5") };
  static get p6() { return document.getElementById("p6") };
  static get p7() { return document.getElementById("p7") };

  // used in User, audio.js
  static get audio() { return document.getElementById("audio") };
  static get speaker() { return document.getElementById("speaker") };

  // used in User, Round
  static get textContainer() { return document.getElementById("text_container") };

  // used in Round, UserRound
  static get tryAgain() { return document.getElementById("try_again") };

  // used in Round, Question
  static get quiz_form() { return document.getElementById("quiz_form") };

  // used in Round, Question, UserAnswers
  static get quiz_container() { return document.getElementById("quiz_container") };

  // used in Question, UserAnswers
  static get r1() { return document.getElementById("r1") };
  static get r2() { return document.getElementById("r2") };
  static get r3() { return document.getElementById("r3") };
  static get r4() { return document.getElementById("r4") };
  static get r5() { return document.getElementById("r5") };
  static get r6() { return document.getElementById("r6") };
  static get r7() { return document.getElementById("r7") };

}
