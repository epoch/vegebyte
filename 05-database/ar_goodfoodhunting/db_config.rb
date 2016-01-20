require 'active_record'

options = {
  adapter: 'postgresql',
  username: 'daniel',
  database: 'goodfoodhunting'
}

ActiveRecord::Base.establish_connection(options)