class CreateIncentives < ActiveRecord::Migration
  def change
    create_table :incentives do |t|

      t.timestamps
    end
  end
end
