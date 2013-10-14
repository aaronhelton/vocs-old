class Relationship < ActiveRecord::Base
  belongs_to :concept
  belongs_to :concept, class_name: "Concept", foreign_key: :related_concept_id
  validates :relationship_type, presence: true
  validates :related_concept_id, presence: true
end
