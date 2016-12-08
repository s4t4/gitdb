class CreateMaitenanceStates < ActiveRecord::Migration[5.0]
  def change
    create_table :maitenance_states do |t|

      t.timestamps
    end
  end
end
