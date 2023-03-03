# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
luke = User.create(name: "Luke", lang_code: "en-US", password: "123", username: "mvp", email: "mvp@example.com")
#email must be a valid email address
germanlang = Language.create(language: "german")
germanwords = Lesson.create(user_id: luke.id, language_id: germanlang.id, title: "German Freaq")
#can make sentence structures
flashcards = Flashcard.create(genre: "words", front: "Deutsch", 
back: {"en-US": "German", "fr-FR": "Allemand", "de": "Deutsch"})
flashcardss = Flashcard.create(genre: "words", front: "Deutsch", 
back: {"en-US": "German", "fr-FR": "Allemand", "de": "Deutsch"})
flashcardsss = Flashcard.create(genre: "words", front: "Deutsch", 
back: {"en-US": "German", "fr-FR": "Allemand", "de": "Deutsch"})
germanflash = LanguageFlashcard.create(language_id: germanlang.id, flashcard_id: flashcards.id, title: "German Freaq")
germanflash = LanguageFlashcard.create(language_id: germanlang.id, flashcard_id: flashcardss.id, title: "German Freaq")
germanflash = LanguageFlashcard.create(language_id: germanlang.id, flashcard_id: flashcardss.id, title: "German Sentences")
# luke << germanlang
# flashcards

# potential object format
# format all of a single language in a single object
# instead of fetching the entire object, fetch an index
# format every language in the same order

#  fetch(`http://port3000:english/${by letter, genre etc..}}`)

