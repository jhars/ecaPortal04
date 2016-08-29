class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.references :district, foreign_key: true

      t.timestamps
    end
  end
end
