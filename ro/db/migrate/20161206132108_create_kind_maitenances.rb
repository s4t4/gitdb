class CreateKindMaitenances < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_maitenances do |t|

      t.timestamps
    end
  end
end
