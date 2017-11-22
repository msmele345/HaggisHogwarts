class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

    	t.string	:first_name, null: false
    	t.string	:last_name, null: false
    	t.string	:email, null: false
    	t.boolean	:is_scottish, null: false
    	t.string	:password_digest

      t.timestamps
    end
  end
end
