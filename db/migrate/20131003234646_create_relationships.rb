class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :concept_id
      t.string :relationship_type
      t.integer :related_concept_id

      t.timestamps
    end
  end
end
