class AddIsCategoryToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :is_category, :boolean, default: false
  end
end
