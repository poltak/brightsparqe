require 'test_helper'

class OrganisationTest < ActiveSupport::TestCase
  def setup
  	@organisation = Organisation.new(oname:"KFC",cname:"tommy",email:"499600252@qq.com",phone:"1234")
  end

  test "should be valid " do 
  	assert @organisation.valid?
  end

  test "oname should be present" do
  	@organisation.oname = " "
  	assert_not @organisation.valid?
  end
  test "cname should be present" do
  	@organisation.cname = " "
  	assert_not @organisation.valid?
  end
  test "phone should be present" do
  	@organisation.phone = " "
  	assert_not @organisation.valid?
  end
  test "email should be present" do
  	@organisation.email = " "
  	assert_not @organisation.valid?
  end
  test "email validation should reject invalid address" do
  	invalid_addresses = %w[linkchiu@gmail,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com]
  	invalid_addresses.each do |invalid_address|
  		@organisation.email = invalid_address
  		assert_not @organisation.valid?, "#{invalid_address.inspect} should be invalid"
  	end
  end
end
