class CreateHangarStates < ActiveRecord::Migration[5.0]
  def change
    create_table :hangar_states do |t|

      t.timestamps
    end
  end
end
