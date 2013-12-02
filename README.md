# Artoo Adaptor For Spark

This repository contains the Artoo (http://artoo.io/) adaptor for the Spark core device (http://spark.io) using the built-in Tinker protocol.

Artoo is a open source micro-framework for robotics using Ruby.

For more information abut Artoo, check out our repo at https://github.com/hybridgroup/artoo

[![Code Climate](https://codeclimate.com/github/hybridgroup/artoo-spark.png)](https://codeclimate.com/github/hybridgroup/artoo-spark) [![Build Status](https://travis-ci.org/hybridgroup/artoo-spark.png?branch=master)](https://travis-ci.org/hybridgroup/artoo-spark)

## Installing

```
gem install artoo-spark
```

You will need to have a Spark device, and an access token from a registered Spark account. 


## Using

```ruby
require 'artoo'

connection :spark, :adaptor => :spark, :access_token => 'XYZABC123'
device :led, :driver => :led, :pin => 'D0'

work do
  every(1.second) do
    led.toggle
  end
end
```

## Connecting to Spark

Once your Spark is connected via Wifi, you're done. It should keep itself connected, and your Artoo program should be able to connect to it via the Internet, using the access token that Spark has given you.
