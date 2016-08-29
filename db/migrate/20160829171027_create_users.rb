class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.references :district, foreign_key: true
      t.integer :grade
      t.string :email
      t.string :phone
      t.integer :student_count

      t.timestamps
    end
  end
end
