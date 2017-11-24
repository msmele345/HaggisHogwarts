class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|

    	t.string	:item
    	t.integer	:quantity
    	t.references	:recipe
    	t.references	:measurment

      t.timestamps
    end
  end
end
