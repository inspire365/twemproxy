require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')
#redis = Redis.new(:host => "127.0.0.1", :port => 6379, :password => 'Hello_123!')

vec=[]

counter=0

for i in 0..500
  key = "k_" + i.to_s
  vec.push(key)
  counter += 1
  printf "%s\n", key
end

ret=redis.del(vec)

print "--------------\n"
print ret

print "\n"

