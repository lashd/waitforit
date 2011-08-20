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

def wait_until max_wait_time=10, opts={:retry_every => 1.seconds}
  start_time = Time.now
  until Time.now > start_time + max_wait_time
    return if yield == true
    sleep 0.5
  end
  raise RuntimeError, "Action took to long"
end