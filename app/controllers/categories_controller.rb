class CategoriesController < ApplicationController
  def index
    @categories = Concept.category.paginate(page: params[:page])
  end
end
