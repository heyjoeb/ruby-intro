Dir["../lib/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.formatter = 'progress'
  config.order = "random"
  config.color = true
  config.tty = true
end
