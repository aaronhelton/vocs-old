class ConceptsController < ApplicationController
  def index
    @concepts = Concept.paginate(page: params[:page])
  end

  def show
    @concept = Concept.find(params[:id])
    respond_to do |format|
      format.html
      format.json{
        j = Hash.new
        j[:id] = @concept.id
        j[:name] = @concept.name
        j[:created_at] = @concept.created_at
        j[:updated_at] = @concept.updated_at
        j[:labels] = @concept.labels
        j[:identifiers] = @concept.identifiers
        render :json => j.to_json
        
      }
    end
  end

end
