class AddConceptTypeToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :concept_type, :string
  end
end
