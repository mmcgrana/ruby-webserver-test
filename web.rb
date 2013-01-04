require "sinatra/base"
require "sequel"

DB = Sequel.connect(ENV["DATABASE_URL"], max_connections: 5)

class Web < Sinatra::Base
  get "/no-op" do
    "no-op\n"
  end

  get "/sleep-ruby" do
    sleep(0.200)
    "ruby-sleep\n"
  end

  get "/sleep-pg" do
    DB.run("select pg_sleep(0.200)")
    "pg-sleep\n"
  end
end
