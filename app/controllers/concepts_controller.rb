class ConceptsController < ApplicationController
  def index
    @concepts = Concept.paginate(page: params[:page])
  end

  def show
    @concept = Concept.find(params[:id])
  end

end
