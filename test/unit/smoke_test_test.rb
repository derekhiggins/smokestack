require 'test_helper'

class SmokeTestTest < ActiveSupport::TestCase

  test "create" do
    smoke_test = SmokeTest.create(
        :branch_url => "lp:nova",
        :description => "Nova trunk",
        :merge_trunk => true
    )
    assert_equal "Nova trunk", smoke_test.description
    assert_equal "lp:nova", smoke_test.branch_url
    assert smoke_test.merge_trunk
  end

  test "create fails without description" do
    smoke_test = SmokeTest.create(
        :branch_url => "lp:nova",
        :merge_trunk => true
    )
    assert_equal false, smoke_test.valid?
  end

  test "create fails without branch url" do
    smoke_test = SmokeTest.create(
        :description => "Nova trunk",
        :merge_trunk => true
    )
    assert_equal false, smoke_test.valid?
  end

end
