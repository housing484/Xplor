class CreateApartmentsws < ActiveRecord::Migration
  def change
    create_table :apartmentsws do |t|
      t.text :title
      t.string :body
      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
