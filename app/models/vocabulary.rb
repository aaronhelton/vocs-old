class Vocabulary < ActiveRecord::Base
  has_many :labels, as: :labelable
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :concepts
end
