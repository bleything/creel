require "minitest/autorun"
require "creel/helpers"

class TestCreelHelpers < MiniTest::Unit::TestCase
  def setup
    @t = Object.new
    @t.extend Creel::Helpers
  end

  def test_translate_path_returns_root_for_empty_string
    assert_equal "root", @t.translate_path( [''] )
  end

  def test_translate_path_returns_root_for_single_slash
    assert_equal "root", @t.translate_path( ['/'] )
  end

  def test_translate_path_joins_arrays_with_underscores
    assert_equal "foo_bar", @t.translate_path( %w(foo bar) )
  end

  def test_translate_path_replaces_slashes_with_underscores
    assert_equal "foo_bar", @t.translate_path( "foo/bar" )
  end

end
