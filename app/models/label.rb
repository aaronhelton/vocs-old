class Label < ActiveRecord::Base
  has_and_belongs_to_many :concepts
  validates :value, presence: true
  validates :language, presence: true
  validates :label_type, presence: true
end
