class CategoriesController < ApplicationController
  def index
    @categories = Concept.isConceptScheme.paginate(page: params[:page])
  end
end
