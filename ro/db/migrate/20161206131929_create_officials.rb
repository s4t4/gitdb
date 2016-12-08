class CreateOfficials < ActiveRecord::Migration[5.0]
  def change
    create_table :officials do |t|

      t.timestamps
    end
  end
end
