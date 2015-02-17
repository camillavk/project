class AddQuestionIdToTestsessions < ActiveRecord::Migration
  def change
    add_reference :testsessions, :question, index: true
    add_foreign_key :testsessions, :questions
  end
end
