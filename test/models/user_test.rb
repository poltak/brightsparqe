require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(fname:"linc", lname:"chiu",email:"linkchiu007@gmail.com",state:"vic")
  end

  test "should be valid" do
	assert @user.valid?  	
  end

  test "fname should be present" do
  	@user.fname = ""
  	assert_not @user.valid?
  end

  test "email should be present" do
  	@user.email = ""
  	assert_not @user.valid?
  end

  test "email address should be unique" do
  	duplicate_user = @user.dup 
  	@user.save
  	assert_not duplicate_user.valid?
  end
end
