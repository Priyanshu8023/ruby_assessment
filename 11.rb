module Logger
  def log(message)
    puts "[LOG]: #{message}"
  end
end

class Service
  extend Logger

  def self.start
    log("Service started")
  end

  def self.stop
    log("Service Stopped")
  end
end

Service.log("Initializing service..")
Service.start
Service.log("Working Properlly")
Service.stop