require_relative './bridge.rb'

puts 'Go!'

sleep 1

puts "Suddenly - a river!"

sleep 1

bridge = Bridge.new

sleep 1

if !bridge.is_opened?
  bridge.open
end

sleep 1

puts "Let's go to the next point!"

puts bridge.is_opened?.to_s



