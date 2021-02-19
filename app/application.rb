class Application

    def call(env)
      resp = Rack::Response.new
  
      if Time.now.hour <= 11
        resp.write "Good Morning! It is #{Time.now}. The day is yours!"
      elsif Time.now.hour >= 12
        resp.write "Good Afternoon! It is #{Time.now}. Seize the day!"
      end 
      resp.finish
    end
  
  end