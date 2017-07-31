class CreateHaverooms < ActiveRecord::Migration
  def change
    create_table :haverooms do |t|

      t.timestamps null: false
    end
  end
end
