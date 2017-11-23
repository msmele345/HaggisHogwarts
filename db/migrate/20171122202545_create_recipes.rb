class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|

    	t.string	:name, null: false
    	t.integer	:prep_time, null: false
    	t.string	:instructions, null: false
    	t.integer	:difficulty, null: false
    	t.string	:photo_url
    	t.references	:chef
    	t.references	:category

      t.timestamps
    end
  end
end
