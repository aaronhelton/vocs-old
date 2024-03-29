class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :value
      t.string :language
      t.string :label_type
      t.references :labelable, polymorphic: true

      t.timestamps
    end
  end
end
