class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :aa
      t.timestamps null: false
    end
  end
end
