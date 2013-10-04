class CreateIdentifiers < ActiveRecord::Migration
  def change
    create_table :identifiers do |t|
      t.string :value
      t.boolean :is_uri

      t.timestamps
    end
  end
end
