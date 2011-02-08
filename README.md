# creel

* http://github.com/bleything/creel

## DESCRIPTION:

A small [Sinatra] app to receive webhooks and store them in [MongoDB]
for later reference.

[sinatra]: http://sinatrarb.com
[mongodb]: http://mongodb.org

## FEATURES:

* receives a `POST` to any URL and stores it in Mongo

## REQUIREMENTS:

### RubyGems

For production:

* [Sinatra]
* The official [MongoDB][mongoruby] Ruby driver, with `bson_ext`

[mongoruby]: http://www.mongodb.org/display/DOCS/Ruby+Language+Center

For development, you may also want:

* [minitest]
* [hoe]
* [rack-test]

[minitest]: http://github.com/seattlerb/minitest
[hoe]: http://seattlerb.rubyforge.org/hoe
[rack-test]: http://github.com/brynary/rack-test

### Other Stuff

You should have a working [MongoDB] instance running.

## INSTALL:

    $ [sudo] gem install creel

## LICENSE:

(The MIT License)

Copyright (c) 2011 Ben Bleything <ben@bleything.net>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
