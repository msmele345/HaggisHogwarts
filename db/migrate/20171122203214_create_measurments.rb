class CreateMeasurments < ActiveRecord::Migration[5.1]
  def change
    create_table :measurments do |t|

    	t.string	:unit

      t.timestamps
    end
  end
end
