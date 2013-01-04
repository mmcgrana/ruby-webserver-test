require "sinatra/base"
require "sequel"

DB = Sequel.connect(ENV["DATABASE_URL"], max_connections: 5)

class Web < Sinatra::Base
  get "/no-op" do
  	"no-op\n"
  end

  get "/ruby-sleep" do
  	sleep(0.100)
  	"ruby-sleep\n"
  end

  get "/pg-sleep" do
  	DB.run("select pg_sleep(0.100)")
  	"pg-sleep\n"
  end
end
