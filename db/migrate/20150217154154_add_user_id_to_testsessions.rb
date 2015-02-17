class AddUserIdToTestsessions < ActiveRecord::Migration
  def change
    add_reference :testsessions, :user, index: true
    add_foreign_key :testsessions, :users
  end
end
