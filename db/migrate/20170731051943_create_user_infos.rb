class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :category
      t.string :aa
      t.string :school_name
      t.timestamps null: false
    end
  end
end
