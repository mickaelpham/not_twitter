require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'validate presence of email' do
    u = User.new
    assert_not u.valid?
  end
end
