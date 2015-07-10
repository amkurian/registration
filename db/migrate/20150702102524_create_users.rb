class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :logid
      t.string :password
      t.string :employee_id
      t.string :date_of_birth
      t.string :gender
      t.string :time_zone
      t.string :date_of_joining
      t.text :education
      t.text :comments
      t.string :work_phone
      t.boolean :islock
      t.boolean :isactive
      t.string :date_of_deactivation
      t.string :Reason
      t.timestamps null: false
    end
  end
end
