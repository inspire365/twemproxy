require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')

counter=0

key="hash_123"

for i in 0..2000
  field = "k_" + i.to_s
  value = "v_" + i.to_s
  counter += 1
  value = redis.hset(key, field, value)
end

print "counter: " + counter.to_s

print "\n"

