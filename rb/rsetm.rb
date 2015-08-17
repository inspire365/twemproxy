require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Duowan_123!')

#vec=[]

counter=0

for i in 0..2000
  key = "k_" + i.to_s
  #vec.push(key)
  value = "v_" + i.to_s
  #vec.push(value)
  counter += 1
  value = redis.set(key, value)
end

print "counter: " + counter.to_s
#redis.mset(vec)

print "\n"

