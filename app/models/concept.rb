class Concept < ActiveRecord::Base
  has_many :broader, -> { where "relationship_type = 'broader'" }, class_name: "Relationship", foreign_key: :concept_id, dependent: :destroy
  has_many :related, -> { where "relationship_type = 'related'" }, class_name: "Relationship", foreign_key: :concept_id, dependent: :destroy
  has_many :narrower, -> { where "relationship_type = 'narrower'" }, class_name: "Relationship", foreign_key: :concept_id, dependent: :destroy
  has_many :top, -> { where "relationship_type = 'top'" }, class_name: "Relationship", foreign_key: :concept_id, dependent: :destroy
  has_and_belongs_to_many :labels
  has_and_belongs_to_many :identifiers
  validates :name, presence: true
  scope :isConceptScheme, -> { where(concept_type: 'Concept Scheme') } 
  scope :isVocabulary, -> { where(concept_type: 'Vocabulary') }
end
