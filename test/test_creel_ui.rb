require "minitest/autorun"
require "mocha"
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

  describe "POST" do
    before do
      @params = { :foo => :bar, :cats => :dogs }

      @db = mock
      @coll = mock
      app.stubs( :db ).returns( @db )
    end

    it "inserts into the root collection when there's no path" do
      @db.expects( :collection ).with( 'root' ).returns( @coll )
      @coll.expects( :insert ).with( @params )

      post '/', @params
    end


    # def test_posting_to_path_inserts_into_mongo
      # params = { :foo => :bar, :cats => :dogs }


      # Creel::DB.expects( :collection ).with( 'some_path_etc' ).returns( @coll )
      # @coll.expects( :insert ).with( params )

      # path = post "/some/path/etc", params
    # end

  end
end
