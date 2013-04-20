class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|

      t.timestamps
    end
  end
end
