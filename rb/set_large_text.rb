require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')

#vec=[]

counter=0

value="v_"

for i in 0..2000
  #vec.push(key)
  value = value + "_" + i.to_s
  #vec.push(value)
end

key="abc"

value = redis.set(key, value)

print "OK\n"

