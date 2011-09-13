module TimeIncrements
  def seconds
    self * 1
  end
  
  def minutes
    seconds * 60
  end
  
  def hours
    minutes * 60
  end
  
  def days
    hours * 24
  end
  
  alias_method :second, :seconds
  alias_method :minute, :minutes
  alias_method :hour, :hours
  alias_method :day, :days
end
class Float
  include TimeIncrements
end
class Fixnum 
  include TimeIncrements
end

def wait_until opts={}
  opts = {:timeout_after => 5.seconds,:retry_every => 0.1.seconds}.merge(opts)
  start_time = Time.now
  until Time.now > start_time + opts[:timeout_after]
    return true if yield == true
    sleep opts[:retry_every]
  end
  raise RuntimeError, "Action took to long"
end