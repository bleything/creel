require "minitest/autorun"
require "rack/test"
require "creel/ui"

class TestCreelUI < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Creel::UI
  end

  def test_any_get_returns_static_text
    root = get "/"
    path = get "/some/path/#{rand 100}/etc"

    assert_equal "nothing to see here", root.body
    assert_equal "nothing to see here", path.body
  end

end
