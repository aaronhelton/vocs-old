class CreateConceptsVocabularies < ActiveRecord::Migration
  def change
    create_table :concepts_vocabularies do |t|
      t.belongs_to :concept
      t.belongs_to :vocabulary
    end
  end
end
