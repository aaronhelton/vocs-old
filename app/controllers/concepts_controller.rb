class ConceptsController < ApplicationController
  def index
    @concepts = Concept.end.paginate(page: params[:page])
  end
end
