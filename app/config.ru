class App
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, ["RACK ATTACK!"]]
  end
end

run App.new
