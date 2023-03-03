# class FlashcardSerializer < ActiveModel::Serializer
#   attributes :id, :genre, :cover_info, :front, :back
#   has_one :language
#   def one_back(attribute, userlang)
#     {back: object.attribute[userlang]}
#   end
# end
class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :genre, :cover_info, :front, :back, :one_back
 has_many :flashcards

  def one_back
    object.back[instance_options[:lang_key]]
  end
end
