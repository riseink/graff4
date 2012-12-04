class CreateCaps < ActiveRecord::Migration
  def change
    create_table :caps do |t|

      t.timestamps
    end
  end
end
