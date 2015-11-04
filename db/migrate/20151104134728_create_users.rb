class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :ip

      t.timestamps null: false
    end
  end
end
