require 'test_helper'

class UserTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without description" do
  	user_task = UserTask.new
  	user_task.due = Date.new(2015, 10, 31)
   	assert_not user_task.save, "Saved task without description"
  end

  test "should not save without due date" do
  	user_task = UserTask.new
  	user_task.description = "Walk dog"
  	assert_not user_task.save, "Saved task without due date"
  end

end
