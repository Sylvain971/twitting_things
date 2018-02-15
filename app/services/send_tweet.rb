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
	  	config.consumer_key        = ENV['consumer_key']
  	  	config.consumer_secret     = ENV['consumer_secret']
      	config.access_token        = ENV['access_token']
  	  	config.access_token_secret = ENV['access_token_secret']
		end
	end

	def send_tweet(content)
		@client.update(content)
	end

	def skurskur
		p skurskur
	end

end
