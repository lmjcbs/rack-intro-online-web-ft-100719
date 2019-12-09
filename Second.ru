require 'rack'

class Myserver
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_reponse ]
  end

  def pretty_reponse
    (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end

run Myserver.new