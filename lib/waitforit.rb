module TimeIncrements
  def seconds
    self * 1
  end
  alias_method :second, :seconds
end
class Float
  include TimeIncrements
end
class Fixnum 
  include TimeIncrements
end

def wait_until opts={}
  opts = {:timeout_after => 2.seconds,:retry_every => 0.1.seconds}.merge(opts)
  start_time = Time.now
  until Time.now > start_time + opts[:timeout_after]
    return if yield == true
    sleep opts[:retry_every]
  end
  raise RuntimeError, "Action took to long"
end