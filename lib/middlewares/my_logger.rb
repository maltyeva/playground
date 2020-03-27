class MyLogger
  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.now
    status, headers, body = @app.call(env)
    # puts "MyLogger::#{Time.now}"
    end_time = Time.now

    options = {
      expires: 1.day.from_now,
      value: 'my_value',
      path: '/'
    }
    Rack::Utils.set_cookie_header!(headers, 'my_cookie', options)
    [status, headers, body]
  end
end
