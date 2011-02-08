require 'rubygems'
require 'hoe'

Hoe.plugin :doofus, :git

Hoe.spec 'creel' do
  developer 'Ben Bleything', 'ben@bleything.net'

  ### Use markdown for changelog and readme
  self.history_file = 'CHANGELOG.md'
  self.readme_file  = 'README.md'

  ### Use minitest
  self.testlib = :minitest

  ### Runtime dependencies
  extra_deps << [ 'mongo',    '1.2.0'    ]
  extra_deps << [ 'bson_ext', '1.2.0'    ]
  extra_deps << [ 'sinatra',  '~> 1.1.2' ]

  ### Development dependencies
  extra_dev_deps << [ 'hoe',       '~> 2.9.1' ]
  extra_dev_deps << [ 'minitest',  '~> 2.0.2' ]
  extra_dev_deps << [ 'rack-test', '~> 0.5.7' ]
  extra_dev_deps << [ 'mocha',     '~> 0.9.11' ]

end
