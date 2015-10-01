class CreateTestUsers < ActiveRecord::Migration
  def change
    create_table :test_users do |t|
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
