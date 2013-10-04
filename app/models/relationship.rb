class Relationship < ActiveRecord::Base
  belongs_to :concept
  belongs_to :concept, class_name: "Concept", foreign_key: :related_concept_id
end
