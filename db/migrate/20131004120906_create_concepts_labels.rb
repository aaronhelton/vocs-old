class CreateConceptsLabels < ActiveRecord::Migration
  def change
    create_table :concepts_labels, :id => false do |t|
      t.belongs_to :concept
      t.belongs_to :label
    end
  end
end
