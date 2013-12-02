require "minitest/autorun"
require "mocha"
require "creel/helpers"

describe Creel::Helpers do
  before do
    @t = Object.new
    @t.extend Creel::Helpers
  end

  describe "#translate_path" do
    it "returns root for empty string" do
      assert_equal "root", @t.translate_path( [''] )
    end
    it "returns root for a single slash" do
      assert_equal "root", @t.translate_path( ['/'] )
    end

    it "joins arrays with underscores" do
      assert_equal "foo_bar", @t.translate_path( %w(foo bar) )
    end

    it "replaces slashes with underscores" do
      assert_equal "foo_bar", @t.translate_path( "foo/bar" )
    end
  end

  describe '#db' do
    it "returns a database object" do
      @conn = mock
      Mongo::Connection.expects( :new ).returns( @conn )
      @conn.expects( :db ).with( 'creel' )

      @t.db
    end
  end

end
