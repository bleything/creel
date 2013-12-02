# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{isolate}
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Barnette", "Ryan Davis"]
  s.date = %q{2010-10-19}
  s.description = %q{Isolate is a very simple RubyGems sandbox. It provides a way to
express and automatically install your project's Gem dependencies.}
  s.email = ["code@jbarnette.com", "ryand-ruby@zenspider.com"]
  s.extra_rdoc_files = ["Manifest.txt", "CHANGELOG.rdoc", "README.rdoc"]
  s.files = [".autotest", "CHANGELOG.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "lib/hoe/isolate.rb", "lib/isolate.rb", "lib/isolate/entry.rb", "lib/isolate/events.rb", "lib/isolate/now.rb", "lib/isolate/rake.rb", "lib/isolate/sandbox.rb", "test/fixtures/blort-0.0.gem", "test/fixtures/isolate.rb", "test/fixtures/override.rb", "test/fixtures/override.rb.local", "test/fixtures/with-hoe/specifications/hoe-2.3.3.gemspec", "test/fixtures/with-hoe/specifications/rake-0.8.7.gemspec", "test/fixtures/with-hoe/specifications/rubyforge-1.0.4.gemspec", "test/isolate/test.rb", "test/test_isolate.rb", "test/test_isolate_entry.rb", "test/test_isolate_events.rb", "test/test_isolate_sandbox.rb"]
  s.homepage = %q{http://github.com/jbarnette/isolate}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubyforge_project = %q{isolate}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Isolate is a very simple RubyGems sandbox}
  s.test_files = ["test/test_isolate.rb", "test/test_isolate_entry.rb", "test/test_isolate_events.rb", "test/test_isolate_sandbox.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 1.7"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.2"])
    else
      s.add_dependency(%q<minitest>, ["~> 1.7"])
      s.add_dependency(%q<hoe>, [">= 2.6.2"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 1.7"])
    s.add_dependency(%q<hoe>, [">= 2.6.2"])
  end
end
