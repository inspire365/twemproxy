require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Duowan_123!')
#redis = Redis.new(:host => "127.0.0.1", :port => 6379, :password => 'Duowan_123!')

vec=[]

counter=0

for i in 0..2
  key = "k_" + i.to_s
  vec.push(key)
  value = "v_" + i.to_s
  vec.push(value)
  counter += 1
end

print vec

ret=redis.mset(vec)

print "--------------\n"
print ret

print "\n"

