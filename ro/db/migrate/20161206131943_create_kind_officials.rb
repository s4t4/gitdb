class CreateKindOfficials < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_officials do |t|

      t.timestamps
    end
  end
end
