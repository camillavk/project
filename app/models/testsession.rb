class Testsession < ActiveRecord::Base
  belongs_to :user
  belongs_to :test
  belongs_to :question

  #need to put this in later :S
  # validates_uniqueness_of :user_id, scope: [:test_id, :question_id]
end
