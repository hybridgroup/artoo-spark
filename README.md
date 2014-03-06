# Artoo Adaptor For Spark

This repository contains the Artoo (http://artoo.io/) adaptor for the Spark core device (http://spark.io) using the built-in Tinker protocol.

Artoo is a open source micro-framework for robotics using Ruby.

For more information abut Artoo, check out our repo at https://github.com/hybridgroup/artoo

[![Code Climate](https://codeclimate.com/github/hybridgroup/artoo-spark.png)](https://codeclimate.com/github/hybridgroup/artoo-spark) [![Build Status](https://travis-ci.org/hybridgroup/artoo-spark.png?branch=master)](https://travis-ci.org/hybridgroup/artoo-spark)

## Installing

```
gem install artoo-spark
```

You will need to have a Spark device, it's device ID (found via https://spark.io's Build tool), and an access token from a registered Spark account. 

## Using

```ruby
require 'artoo'

connection :spark, :adaptor => :spark, :access_token => 'XYZABC123', :device_id => '123ABC456'
device :led, :driver => :led, :pin => 'D0'

work do
  every(1.second) do
    led.toggle
  end
end
```

## Connecting to Spark

Once your Spark is connected via Wifi, you're done. It should keep itself connected, and your Artoo program should be able to connect to it via the Internet, using the access token that Spark has given you.

## Documentation

Check out our [documentation](http://artoo.io/documentation/) for lots of information about how to use Artoo.

## IRC

Need more help? Just want to say "Hello"? Come visit us on IRC freenode #artoo

## Contributing

* All patches must be provided under the Apache 2.0 License
* Please use the -s option in git to "sign off" that the commit is your work and you are providing it under the Apache 2.0 License
* Submit a Github Pull Request to the appropriate branch and ideally discuss the changes with us in IRC.
* We will look at the patch, test it out, and give you feedback.
* Avoid doing minor whitespace changes, renamings, etc. along with merged content. These will be done by the maintainers from time to time but they can complicate merges and should be done seperately.
* Take care to maintain the existing coding style.
* Add unit tests for any new or changed functionality.
* All pull requests should be "fast forward"
  * If there are commits after yours use “git rebase -i <new_head_branch>”
  * If you have local changes you may need to use “git stash”
  * For git help see [progit](http://git-scm.com/book) which is an awesome (and free) book on git


(c) 2013-2014 The Hybrid Group
