require 'connection_pool'

pool_size = ENV.fetch('RAILS_MAX_THREADS', 5)
REDIS_POOL = ConnectionPool.new(size: pool_size, timeout: 5) { Redis.new }
