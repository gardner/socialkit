class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|

      t.timestamps
    end
  end
end
