class MyLogger
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    puts "MyLogger::#{Time.now}"
    [status, headers, body]
  end
end
