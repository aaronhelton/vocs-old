class DeleteIsCategoryFromConcepts < ActiveRecord::Migration
  def change
    remove_column :concepts, :is_category
  end
end
