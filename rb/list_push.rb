require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')

counter=0

key="list_777"

for i in 0..200
  value = "v_" + i.to_s
  counter += 1
  value = redis.lpush(key, value)
end

for i in 1000..1200
  value = "v_" + i.to_s
  counter += 1
  value = redis.rpush(key, value)
end

print "counter: " + counter.to_s

print "\n"

