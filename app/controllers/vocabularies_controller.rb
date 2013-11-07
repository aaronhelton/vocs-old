class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.paginate(page: params[:page])
  end

  def show
    @vocabulary = Vocabulary.find(params[:id])
  end
end
