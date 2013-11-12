class CreateCategoriesVocabularies < ActiveRecord::Migration
  def change
    create_table :categories_vocabularies do |t|
      t.belongs_to :category
      t.belongs_to :vocabulary
    end
  end
end
