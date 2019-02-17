class CreateUsers < ActiveRecord::Migration[5.2]
  #METHOD CHANGE MEANS UP AND DOWN WHILE DOING MIGRATION IT IS USED
  def up
    create_table :users do |t|
      t.column "firstname", :string, :limit => 25
      t.string "last name", :limit => 25
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 25

      #t.datetime "created_at"
      #t.datetime "updated_at" 

      t.timestamps
    end
  end

  def down
  	drop_table :users
  end
end
