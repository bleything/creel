require 'rubygems'
require 'hoe'

Hoe.plugin :doofus, :git, :isolate

Hoe.spec 'creel' do
  developer 'Ben Bleything', 'ben@bleything.net'

  ### Use markdown for changelog and readme
  self.history_file = 'CHANGELOG.md'
  self.readme_file  = 'README.md'

  ### Configure Isolate
  self.extra_deps << [ 'isolate', '~> 3.0' ]
  self.isolate_dir = ".isolated_gems"

  ### Use minitest
  self.testlib = :minitest
end
