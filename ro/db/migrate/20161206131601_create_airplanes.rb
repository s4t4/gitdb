class CreateAirplanes < ActiveRecord::Migration[5.0]
  def change
    create_table :airplanes do |t|

      t.timestamps
    end
  end
end
