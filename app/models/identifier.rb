class Identifier < ActiveRecord::Base
  has_and_belongs_to_many :concepts
  validates :value, presence: true
end
