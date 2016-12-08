class CreateKindFlaights < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_flaights do |t|

      t.timestamps
    end
  end
end
