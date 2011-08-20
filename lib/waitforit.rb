def wait_until max_wait_time=10
  start_time = Time.now
  until Time.now > start_time + max_wait_time
    return if yield == true 
  end
  raise RuntimeError, "Action took to long"
end