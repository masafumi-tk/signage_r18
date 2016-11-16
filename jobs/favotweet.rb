require 'twitter'
require 'rubygems'

#### Get your twitter keys & secrets:
#### https://dev.twitter.com/docs/auth/tokens-devtwittercom

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ''
  config.consumer_secret = ''
  config.access_token = ''
  config.access_token_secret = ''
end

#twitter.update("test")
#puts twitter.favorites(query={})
=begin
timeline = twitter.user_timeline("piell18")
timeline.each do |tweet|
  puts "-------------"
  puts tweet.favorite_count
end
=end
client.home_timeline.each do |tweet|
  puts tweet.full_text
  puts "FAVORITE: #{tweet.favorite_count}"
  puts "RETWEET : #{tweet.retweet_count}"
end

user = twitter.user("pieel18")
puts user.screen_name
puts user.followers_count
puts user.id
