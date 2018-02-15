class SendTweet

	def initialize(content)
		@content = content
	end

	def perform
		log_in_to_twitter
		send_tweet(@content)
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
	  	config.consumer_key        = ENV['CONSUMER_KEY']
  	  	config.consumer_secret     = ENV['CONSUMER_SECRET']
      	config.access_token        = ENV['ACCESS_TOKEN']
  	  	config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
		end
	end

	def send_tweet(content)
		@client.update(content)
	end

end
