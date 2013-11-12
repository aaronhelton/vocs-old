class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.paginate(page: params[:page])
    #@labels = Label.includes(:labelable).all
  end

  def show
    @vocabulary = Vocabulary.find(params[:id])
  end
end
