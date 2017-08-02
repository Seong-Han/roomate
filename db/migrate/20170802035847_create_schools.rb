class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :category
      t.integer :user_id
      t.string :school_name
      t.boolean :one_time
      t.timestamps null: false
    end
  end
end
