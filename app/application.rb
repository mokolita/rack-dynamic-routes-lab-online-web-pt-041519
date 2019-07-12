class Application 


def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      Items.each do |item|
        resp.write "#{item}\n"
      end
    else
      resp.write "Route not found"
    end
 
    resp.finish
  end
end