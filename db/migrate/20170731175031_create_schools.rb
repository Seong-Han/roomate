class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :category
      t.string :school_name
      t.timestamps null: false
    end
  end
end
