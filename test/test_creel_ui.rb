require "minitest/autorun"
require "rack/test"

require "creel/ui"

describe Creel::UI do
  ######################################################################
  ### Rack::Test setup
  ######################################################################
  include Rack::Test::Methods

  def app
    Creel::UI
  end

  ######################################################################
  ### Examples
  ######################################################################

  describe "GET" do
    it "returns static text" do

      root = get "/"
      path = get "/some/path/#{rand 100}/etc"

      assert_equal "nothing to see here", root.body
      assert_equal "nothing to see here", path.body
    end
  end

end
