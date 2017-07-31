class CreateNhaverooms < ActiveRecord::Migration
  def change
    create_table :nhaverooms do |t|

      t.timestamps null: false
    end
  end
end
