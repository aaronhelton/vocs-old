class Vocabulary < ActiveRecord::Base
  has_many :labels, as: :labelable
end
