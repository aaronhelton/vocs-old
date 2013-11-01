class VocabulariesController < ApplicationController
  def index
    @vocabularies = Concept.isVocabulary.paginate(page: params[:page])
  end
end
