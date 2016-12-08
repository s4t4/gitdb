class CreateAirplaneStates < ActiveRecord::Migration[5.0]
  def change
    create_table :airplane_states do |t|

      t.timestamps
    end
  end
end
