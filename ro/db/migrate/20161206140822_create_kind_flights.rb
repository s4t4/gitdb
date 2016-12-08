class CreateKindFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_flights do |t|

      t.timestamps
    end
  end
end
