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
    expect { wait_until(:timeout_after => 1.second) { false } }.to raise_error RuntimeError
  end

  it 'should keep trying for a specified period' do
    start_time = Time.now
    wait_time = 1.second

    lambda { wait_until(:timeout_after => wait_time) { false } }

    (start_time + wait_time).should be >= Time.now
  end

  it 'should be possible for user to supply the retry time' do
    count = 0

    begin
      wait_until(:timeout_after => 1.second, :retry_every => 0.5.seconds) do
        count += 1
      end
    rescue
      count.should == 2
    end
  end
end