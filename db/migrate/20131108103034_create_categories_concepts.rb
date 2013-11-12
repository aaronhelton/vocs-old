class CreateCategoriesConcepts < ActiveRecord::Migration
  def change
    create_table :categories_concepts do |t|
      t.belongs_to :category
      t.belongs_to :concept
    end
  end
end
