class CreateMaitenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maitenances do |t|

      t.timestamps
    end
  end
end
