When 'I debug' do
  puts "I SHOULD BE DEBUGGING NOW!!!"
  debugger
  true
end

When /^I wait for (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end
