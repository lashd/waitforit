require 'rspec'
require "#{File.dirname(__FILE__)}/../lib/waitforit"

describe 'waitforit' do
  it 'should wait until the prescribed thing has happened' do
    end_time = Time.now + 1
    wait_until do
      end_time < Time.now
    end
    end_time.should be < Time.now
  end
  
  it 'should throw an exception if when the prescribed action does not happen in time' do
    expect{wait_until(0.5){false}}.to raise_error RuntimeError
  end
  
  it 'should keep trying for a specified period' do
    start_time = Time.now
    prescribed_wait_time = 1
    
    lambda{wait_until(prescribed_wait_time){false}}
    
    (start_time + prescribed_wait_time).should be >= Time.now 
  end
end