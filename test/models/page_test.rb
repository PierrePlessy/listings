require 'test_helper'

describe Page do
  it "returns an array of page using the correct locale" do
    out = Page.footer(:en)

    assert_equal 1, out.length
    assert_equal 'english title', out.first.name
  end

end
