class CreateKindMaitenanceStates < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_maitenance_states do |t|

      t.timestamps
    end
  end
end
