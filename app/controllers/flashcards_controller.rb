
  class FlashcardsController < ApplicationController
#     def index
# # if user logic otherwise lang_key from post and language from state
#       user = User.find(1)
#       languageuser = LanguageFlashcard.find_by(language_id: 5)
#     # language = user.languages
#       lang_key = user.lang_code
#       flashcards = languageuser.flashcards
#       render json: flashcards, lang_key: lang_key
#     #   , each_serializer: FlashcardSerializer, 
#     end
    
    def show
      # get flashcards from types of the join table
      card = LanguageFlashcard.find_by(id: params[:id])
      cards_with_title = LanguageFlashcard.where(title: card.title)
      render json: cards_with_title, each_serializer: FinalflashSerializer, lang_key: "en-US"
    end
    
  end
  