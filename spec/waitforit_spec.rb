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
end