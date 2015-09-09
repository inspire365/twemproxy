require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')
#redis = Redis.new(:host => "127.0.0.1", :port => 6379, :password => 'Hello_123!')

vec=[]

counter=0

for i in 0..500
  key = "k_" + i.to_s
  vec.push(key)
  value = "v_" + i.to_s
  vec.push(value)
  counter += 1
  printf "%s ----> %s\n", key, value
end

ret=redis.mset(vec)

print "--------------\n"
print ret

print "\n"

