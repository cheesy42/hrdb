class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email, :null => false
      t.string :crypted_password, :null => false
      t.string :salt, :null => false

      t.timestamps
    end

    add_index :people, :email, unique: true
  end
end
