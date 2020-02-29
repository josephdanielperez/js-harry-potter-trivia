# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

round_1 = Round.create(:title => "Round 1")
round_2 = Round.create(:title => "Round 2")
round_3 = Round.create(:title => "Round 3")
round_4 = Round.create(:title => "Round 4")
round_5 = Round.create(:title => "Round 5")
round_6 = Round.create(:title => "Round 6")
round_7 = Round.create(:title => "Round 7")

question_1 = Question.create(:round_id => 1, :content => "1. When is Harry’s birthday?", :answer_a => "July 31, 1980", :answer_b => "October 31, 1980", :answer_c => "July 31, 1981", :answer_d => "October 31, 1981", :correct_answer => "A")

question_2 = Question.create(:round_id => 1, :content => "2. Where is the boa constrictor from at the zoo?", :answer_a => "Argentina", :answer_b => "Columbia", :answer_c => "Brazil", :answer_d => "Venezuela", :correct_answer => "C")

question_3 = Question.create(:round_id => 1, :content => "3. When did Voldemort kill Harry’s parents?", :answer_a => "July 31, 1980", :answer_b => "October 31, 1980", :answer_c => "July 31, 1981", :answer_d => "October 31, 1981", :correct_answer => "D")

question_4 = Question.create(:round_id => 1, :content => "4. Where does Harry first learn about Nicolas Flamel?", :answer_a => "A Chocolate Frog card", :answer_b => "Hagrid", :answer_c => "A History of Magic", :answer_d => "Great Wizards of the Twentieth Century", :correct_answer => "A")

question_5 = Question.create(:round_id => 1, :content => "5. Who saves Harry from Voldemort in the Forbidden Forrest?", :answer_a => "Bane", :answer_b => "Hagrid", :answer_c => "Firenze", :answer_d => "Ronan", :correct_answer => "C")

question_6 = Question.create(:round_id => 1, :content => "6. How does Quirrell find out how to get past Fluffy?", :answer_a => "Hagrid lets it slip after dinner one night, over a glass of mead", :answer_b => "Hagrid tells him over drinks, in exchange for a dragon egg", :answer_c => "Hagrid accidentally mentions it in conversation, no alcohol is involved", :answer_d => "Hagrid tells him at the Hog’s Head, where a disguised Quirrell keeps buying him drinks", :correct_answer => "D")

question_7 = Question.create(:round_id => 1, :content => "7. What is one bit of wisdom Dumbledore imparts to Harry during his 1st year at Hogwarts?", :answer_a => "Indifference and neglect often do much more damage than outright dislike.", :answer_b => "To the well-organized mind, death is but the next great adventure.", :answer_c => "Understanding is the first step to acceptance, and only with acceptance can there be recovery.", :answer_d => "It is my belief that the truth is generally preferable to lies.", :correct_answer => "B")



question_8 = Question.create(:round_id => 2, :content => "1. Which of the following is not one of the ways Dobby tries to “save” Harry?", :answer_a => "Closes the platform so Harry can’t get on the Hogwarts Express", :answer_b => "Intercepts all of Harry’s letters so he won’t want to return to school", :answer_c => "Sends Harry to school in a flying car in an effort to get him expelled", :answer_d => "Bewitches a Bludger to chase Harry around the Quidditch pitch
", :correct_answer => "C")

question_9 = Question.create(:round_id => 2, :content => "2. Who is the snake going after at the duel when Harry tells it to back off?", :answer_a => "Ernie Macmillan", :answer_b => "Seamus Finnigan", :answer_c => "Lavender Brown", :answer_d => "Justin Finch-Fletchley", :correct_answer => "D")

question_10 = Question.create(:round_id => 2, :content => "3. Who are Harry, Ron, and Hermione meant to impersonate with the Polyjuice Potion?", :answer_a => "Harry as Vincent Crabbe, Ron as Gregory Goyle, Hermione as Millicent Bulstrode", :answer_b => "Harry as Gregory Goyle, Ron as Vincent Crabbe, Hermione as Millicent Bulstrode", :answer_c => "Harry as Vincent Crabbe, Ron as Gregory Goyle, Hermione as Pansy Parkinson", :answer_d => "Harry as Gregory Goyle, Ron as Vincent Crabbe, Hermione as Pansy Parkinson", :correct_answer => "B")

question_11 = Question.create(:round_id => 2, :content => "4. How many years have passed since the last time the Chamber of Secrets was opened?", :answer_a => "25 years", :answer_b => "50 years", :answer_c => "75 years", :answer_d => "100 years", :correct_answer => "B")

question_12 = Question.create(:round_id => 2, :content => "5. Which victim is correctly paired with his/her petrification circumstance?", :answer_a => "Colin Creevey saw the Basilisk through his camera", :answer_b => "Hermione saw the Basilisk’s reflection in water on the floor", :answer_c => "Ernie Macmillan saw the Basilisk through Nearly Headless Nick", :answer_d => "Nearly Headless Nick saw the Basilisk’s reflection in a mirror", :correct_answer => "A")

question_13 = Question.create(:round_id => 2, :content => "6. Who accompanies Harry and Ron down in the Chamber of Secrets?", :answer_a => "Hermione", :answer_b => "Professor McGonagall", :answer_c => "Professor Lockhart", :answer_d => "Hagrid", :correct_answer => "C")

question_14 = Question.create(:round_id => 2, :content => "7. What is one bit of wisdom Dumbledore imparts to Harry during his 2nd year at Hogwarts?", :answer_a => "It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.", :answer_b => "It does not do to dwell on dreams and forget to live.", :answer_c => "Always use the proper name for things. Fear of a name increases fear of the thing itself.", :answer_d => "It is our choices that show what we truly are, far more than our abilities.", :correct_answer => "D")



question_15 = Question.create(:round_id => 3, :content => "1. At what point is Harry no longer able to contain his anger towards Aunt Marge?", :answer_a => "When Aunt Marge showers Dudley with money and presents, but neglects to give Harry anything", :answer_b => "When Aunt Marge calls Harry a nasty little liar and a burden, and insists his parents died in a car crash", :answer_c => "When Aunt Marge tells Harry that if he had been left on her doorstep she would have dumped him at an orphanage", :answer_d => "When Aunt Marge explains how Harry turned out by saying if there’s something wrong with the bitch, there’ll be something wrong with the pup", :correct_answer => "B")

question_16 = Question.create(:round_id => 3, :content => "2. How does Harry hail the night bus?", :answer_a => "By sticking his non-wand hand in the air", :answer_b => "By sticking is wand hand in the air", :answer_c => "By booking a ticket in advance", :answer_d => "By selecting the XXXL option in the Uber app", :correct_answer => "B")

question_17 = Question.create(:round_id => 3, :content => "3. Why was Sirius Black convicted?", :answer_a => "He accidentally killed 12 muggles with an explosion when trying to kill Peter Pettigrew", :answer_b => "He betrayed Lily and James Potter as their secret keeper", :answer_c => "He was framed for killing Peter Pettigrew and 12 muggles", :answer_d => "He was a Death Eater and was sentenced without a trial", :correct_answer => "C")

question_18 = Question.create(:round_id => 3, :content => "4. Who were the Marauders and what were their aliases?", :answer_a => "James Potter as Prongs, Sirius Black as Padfoot, Remus Lupin as Moony, Peter Pettigrew as Wormtail", :answer_b => "James Potter as Padfoot, Sirius Black as Snuffles, Remus Lupin as Moony, Peter Pettigrew as Wormtail", :answer_c => "James Potter as Prongs, Sirius Black as Padfoot, Alastor Moody as Mad-Eye, Peter Pettigrew as Scabbers", :answer_d => "James Potter as Padfoot, Sirius Black as Snuffles, Remus Lupin as Moony, Alastor Moody as Mad-Eye", :correct_answer => "A")

question_19 = Question.create(:round_id => 3, :content => "5. Who tried to set a trap for Snape by luring him to the Shrieking Shack?", :answer_a => "Remus Lupin", :answer_b => "James Potter", :answer_c => "Sirius Black", :answer_d => "Peter Pettigrew", :correct_answer => "C")

question_20 = Question.create(:round_id => 3, :content => "6. Whose lives are saved with the use of the Time-Turner?", :answer_a => "Remus Lupin and Buckbeak", :answer_b => "Sirius Black and Peter Pettigrew", :answer_c => "Remus Lupin and Peter Pettigrew", :answer_d => "Sirius Black and Buckbeak", :correct_answer => "D")

question_21 = Question.create(:round_id => 3, :content => "7. What is one bit of wisdom Dumbledore imparts to Harry during his 3rd year at Hogwarts?", :answer_a => "You think the dead we have loved ever truly leave us? You think that we don’t recall them more clearly than ever in times of great trouble?", :answer_b => "I will only truly have left this school when none here are loyal to me.", :answer_c => "Numbing the pain for a while will make it worse when you finally feel it.", :answer_d => "The truth. It is a beautiful and terrible thing, and should therefore be treated with great caution.
", :correct_answer => "A")



question_22 = Question.create(:round_id => 4, :content => "1. Who casts the Dark Mark at the Quidditch World Cup?", :answer_a => "Barty Crouch Jr.", :answer_b => "Winky the house elf", :answer_c => "Barty Crouch Sr.", :answer_d => "Lucius Malfoy", :correct_answer => "A")

question_23 = Question.create(:round_id => 4, :content => "2. Which dragon does each Triwizard Champion draw out of the bag for the first task?", :answer_a => "Fleur draws the Chinese Fireball, Krum draws the Swedish Short-Snout, Cedric draws the Hungarian Horntail, and Harry draws the Welsh Green", :answer_b => "Fleur draws the Swedish Short-Snout, Krum draws the Hungarian Horntail, Cedric draws the Welsh Green, and Harry draws the Chinese Fireball", :answer_c => "Fleur draws the Hungarian Horntail, Krum draws the Welsh Green, Cedric draws the Chinese Fireball, and Harry draws the Swedish Short-Snout", :answer_d => "Fleur draws the Welsh Green, Krum draws the Chinese Fireball, Cedric draws the Swedish Short-Snout, and Harry draws the Hungarian Horntail", :correct_answer => "D")

question_24 = Question.create(:round_id => 4, :content => "3. With whom do Harry and Ron attend the Yule Ball, respectively?", :answer_a => "Cho Change and Lavender Brown", :answer_b => "Padma Patil and Parvati Patil", :answer_c => "Ginny Weasley and Lavender Brown", :answer_d => "Parvati Patil and Padma Patil", :correct_answer => "D")

question_25 = Question.create(:round_id => 4, :content => "4. What is the first memory Harry witnesses in the Pensieve?", :answer_a => "Dumbledore’s memory of Barty Crouch Jr.’s trial at the Ministry of Magic", :answer_b => "Dumbledore’s memory of Ludo Bagman’s trial at the Ministry of Magic", :answer_c => "Dumbledore’s memory of Karkaroff’s trial at the Ministry of Magic", :answer_d => "Dumbledore’s memory of Barty Crouch Jr. and Bellatrix Lestrange’s trial at the Ministry of Magic", :correct_answer => "C")

question_26 = Question.create(:round_id => 4, :content => "5. In what order do the Triwizard Champions enter the maze?", :answer_a => "Harry and Cedric enter first, Krum enters second, Fleur enters third", :answer_b => "Fleur enters first, Cedric enters second, Harry enters third, Krum enters fourth", :answer_c => "Krum enters first, Harry enters second, Fleur enters third, Cedric enters fourth", :answer_d => "Harry and Krum enter first, Cedric enters second, Fleur enters third", :correct_answer => "A")

question_27 = Question.create(:round_id => 4, :content => "6. What are the components used to resurrect Voldemort?", :answer_a => "Flesh of the father, bone of the servant, blood of the enemy", :answer_b => "Bone of the father, blood of the servant, flesh of the enemy", :answer_c => "Bone of the father, flesh of the servant, blood of the enemy", :answer_d => "Blood of the father, flesh of the servant, bone of the enemy", :correct_answer => "C")

question_28 = Question.create(:round_id => 4, :content => "7. What is one bit of wisdom Dumbledore imparts to Harry during his 4th year at Hogwarts?", :answer_a => "Trust me, the time may come when you will be very glad you saved Pettigrew’s life.", :answer_b => "Curiosity is not a sin. But we should exercise caution with our curiosity.", :answer_c => "The consequences of our actions are always so complicated, so diverse, that predicting the future is a very difficult business indeed.", :answer_d => "To have been loved so deeply, even though the person who loved us is gone, will give us some protection forever.", :correct_answer => "B")



question_29 = Question.create(:round_id => 5, :content => "1. What is the code needed to enter the Ministry of Magic via phone booth?", :answer_a => "62446", :answer_b => "64224", :answer_c => "64226", :answer_d => "62442", :correct_answer => "D")

question_30 = Question.create(:round_id => 5, :content => "2. Who can see the Thestrals?", :answer_a => "Harry", :answer_b => "Harry and Neville", :answer_c => "Harry, Neville, and Luna", :answer_d => "Harry and Luna", :correct_answer => "C")

question_31 = Question.create(:round_id => 5, :content => "3. What line is Harry forced to write until it “sinks in” during detention with Umbridge?", :answer_a => "I must not tell lies", :answer_b => "I must not be late", :answer_c => "I must not talk back", :answer_d => "I must not get angry and throw a fit because no one believes me that Voldemort is back", :correct_answer => "A")

question_32 = Question.create(:round_id => 5, :content => "4. Who snitches on Dumbledore’s Army?", :answer_a => "Cho Chang", :answer_b => "Zacharias Smith", :answer_c => "Marietta Edgecombe", :answer_d => "Michael Corner", :correct_answer => "C")

question_33 = Question.create(:round_id => 5, :content => "5. After entering the circular room in the Department of Mysteries, what is the first room Harry and Co. enter?", :answer_a => "The Death Chamber (the one with the Veil)", :answer_b => "The Brain Room (the one with all the brains…obviously)", :answer_c => "The Hall of Prophecy (the one with all the prophecies…obviously)", :answer_d => "The Time Room (the one with all the clocks…obviously)", :correct_answer => "B")

question_34 = Question.create(:round_id => 5, :content => "6. Which Unforgivable Curse does Harry try to use on Bellatrix after she kills Sirius? ", :answer_a => "Imperio", :answer_b => "Crucio", :answer_c => "Avada Kedavra", :answer_d => "Sectumsempra", :correct_answer => "B")

question_35 = Question.create(:round_id => 5, :content => "7. What is one bit of wisdom Dumbledore imparts to Harry during his 5th year at Hogwarts?", :answer_a => "Age is foolish and forgetful when it underestimates youth.", :answer_b => "You know, I sometimes think we Sort too soon.", :answer_c => "People find it far easier to forgive others for being wrong than being right.", :answer_d => "Youth cannot know how age thinks and feels. But old men are guilty if they forget what it was to be young.", :correct_answer => "D")



question_36 = Question.create(:round_id => 6, :content => "This is Round 6 Question 1 right here?", :answer_a => "This is Question 1 Answer A. It is incorrect.", :answer_b => "This is Question 1 Answer B. It is correct.", :answer_c => "This is Question 1 Answer C. It is incorrect.", :answer_d => "This is Question 1 Answer D. It is incorrect", :correct_answer => "B")

question_37 = Question.create(:round_id => 6, :content => "This is Round 6 Question 2 right here?", :answer_a => "This is Question 2 Answer A. It is incorrect.", :answer_b => "This is Question 2 Answer B. It is incorrect.", :answer_c => "This is Question 2 Answer C. It is incorrect.", :answer_d => "This is Question 2 Answer D. It is correct", :correct_answer => "D")

question_38 = Question.create(:round_id => 6, :content => "This is Round 6 Question 3 right here?", :answer_a => "This is Question 3 Answer A. It is incorrect.", :answer_b => "This is Question 3 Answer B. It is incorrect.", :answer_c => "This is Question 3 Answer C. It is incorrect.", :answer_d => "This is Question 3 Answer D. It is correct", :correct_answer => "D")

question_39 = Question.create(:round_id => 6, :content => "This is Round 6 Question 4 right here?", :answer_a => "This is Question 4 Answer A. It is correct.", :answer_b => "This is Question 4 Answer B. It is incorrect.", :answer_c => "This is Question 4 Answer C. It is incorrect.", :answer_d => "This is Question 4 Answer D. It is incorrect", :correct_answer => "A")

question_40 = Question.create(:round_id => 6, :content => "This is Round 6 Question 5 right here?", :answer_a => "This is Question 5 Answer A. It is incorrect.", :answer_b => "This is Question 5 Answer B. It is correct.", :answer_c => "This is Question 5 Answer C. It is incorrect.", :answer_d => "This is Question 5 Answer D. It is incorrect", :correct_answer => "B")

question_41 = Question.create(:round_id => 6, :content => "This is Round 6 Question 6 right here?", :answer_a => "This is Question 6 Answer A. It is correct.", :answer_b => "This is Question 6 Answer B. It is incorrect.", :answer_c => "This is Question 6 Answer C. It is incorrect.", :answer_d => "This is Question 6 Answer D. It is incorrect", :correct_answer => "A")

question_42 = Question.create(:round_id => 6, :content => "This is Round 6 Question 7 right here?", :answer_a => "This is Question 7 Answer A. It is incorrect.", :answer_b => "This is Question 7 Answer B. It is incorrect.", :answer_c => "This is Question 7 Answer C. It is incorrect.", :answer_d => "This is Question 7 Answer D. It is correct", :correct_answer => "D")



question_43 = Question.create(:round_id => 7, :content => "This is Round 7 Question 1 right here?", :answer_a => "This is Question 1 Answer A. It is incorrect.", :answer_b => "This is Question 1 Answer B. It is incorrect.", :answer_c => "This is Question 1 Answer C. It is correct.", :answer_d => "This is Question 1 Answer D. It is incorrect", :correct_answer => "C")

question_44 = Question.create(:round_id => 7, :content => "This is Round 7 Question 2 right here?", :answer_a => "This is Question 2 Answer A. It is correct.", :answer_b => "This is Question 2 Answer B. It is incorrect.", :answer_c => "This is Question 2 Answer C. It is incorrect.", :answer_d => "This is Question 2 Answer D. It is incorrect", :correct_answer => "A")

question_45 = Question.create(:round_id => 7, :content => "This is Round 7 Question 3 right here?", :answer_a => "This is Question 3 Answer A. It is incorrect.", :answer_b => "This is Question 3 Answer B. It is incorrect.", :answer_c => "This is Question 3 Answer C. It is correct.", :answer_d => "This is Question 3 Answer D. It is incorrect", :correct_answer => "C")

question_46 = Question.create(:round_id => 7, :content => "This is Round 7 Question 4 right here?", :answer_a => "This is Question 4 Answer A. It is incorrect.", :answer_b => "This is Question 4 Answer B. It is correct.", :answer_c => "This is Question 4 Answer C. It is incorrect.", :answer_d => "This is Question 4 Answer D. It is incorrect", :correct_answer => "B")

question_47 = Question.create(:round_id => 7, :content => "This is Round 7 Question 5 right here?", :answer_a => "This is Question 5 Answer A. It is correct.", :answer_b => "This is Question 5 Answer B. It is incorrect.", :answer_c => "This is Question 5 Answer C. It is incorrect.", :answer_d => "This is Question 5 Answer D. It is incorrect", :correct_answer => "A")

question_48 = Question.create(:round_id => 7, :content => "This is Round 7 Question 6 right here?", :answer_a => "This is Question 6 Answer A. It is incorrect.", :answer_b => "This is Question 6 Answer B. It is incorrect.", :answer_c => "This is Question 6 Answer C. It is incorrect.", :answer_d => "This is Question 6 Answer D. It is correct", :correct_answer => "D")

question_49 = Question.create(:round_id => 7, :content => "This is Round 7 Question 7 right here?", :answer_a => "This is Question 7 Answer A. It is incorrect.", :answer_b => "This is Question 7 Answer B. It is correct.", :answer_c => "This is Question 7 Answer C. It is incorrect.", :answer_d => "This is Question 7 Answer D. It is incorrect", :correct_answer => "B")
