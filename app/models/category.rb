class Category < ActiveRecord::Base
  has_many :labels, as: :labelable
  has_and_belongs_to_many :concepts
  has_and_belongs_to_many :vocabularies
  has_many :children, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"
end
