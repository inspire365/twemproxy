require "rubygems"
require 'redis'

redis = Redis.new(:host => "127.0.0.1", :port => 22121, :password => 'Hello_123!')

counter=0

key="hash_123"

attrs = {}

for i in 0..2000
  field = "k_" + i.to_s
  value = "v_" + i.to_s
  attrs[field] = value
  counter += 1
end

  value = redis.mapped_hmset(key, attrs)
printf "counter:%s  res: %s\n", counter.to_s, value.to_s

