require 'test_helper'

describe User do

  before do
    @user = users(:seller)
  end

  it "return false if role != admin" do
    assert_equal false, @user.is_admin?
  end

end
