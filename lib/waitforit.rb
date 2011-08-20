def wait_until
  until yield
    sleep 1
  end
end