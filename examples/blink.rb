require 'artoo'

connection :spark, :adaptor => :spark, :device_id => "", :access_token => ""
device :led, :driver => :led, :pin => "D7"

work do
  every 1.second do
    led.toggle
  end
end
