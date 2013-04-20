class CreateDeductions < ActiveRecord::Migration
  def change
    create_table :deductions do |t|

      t.timestamps
    end
  end
end
