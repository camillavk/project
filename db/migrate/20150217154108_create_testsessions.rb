class CreateTestsessions < ActiveRecord::Migration
  def change
    create_table :testsessions do |t|
      t.string :answer

      t.timestamps null: false
    end
  end
end
