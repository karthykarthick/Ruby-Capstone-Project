require 'rss'
require 'open-uri'

module DriftingRuby
  module Commands
    class GetEpisode < SlackRubyBot::Commands::Base
      command 'get_latest_episode' do |client, data, _match|
        url = 'https://www.driftingruby.com/episodes/feed.rss'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: rss.link)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end

class HelloText
  def self.say_hello
    'Hello! This is a Bot!'
  end
end
