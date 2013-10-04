class CreateConceptsIdentifiers < ActiveRecord::Migration
  def change
    create_table :concepts_identifiers do |t|
      t.belongs_to :concept
      t.belongs_to :identifier
    end
  end
end
