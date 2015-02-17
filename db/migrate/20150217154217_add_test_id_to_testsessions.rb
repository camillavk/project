class AddTestIdToTestsessions < ActiveRecord::Migration
  def change
    add_reference :testsessions, :test, index: true
    add_foreign_key :testsessions, :tests
  end
end
