class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :fullName
      t.string :department
      t.string :gender
      t.text :address
      t.long :phone_number
      t.date :dob
      t.date :year_of_entry

      t.timestamps
    end
  end
end
