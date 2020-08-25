require 'rss'
require 'open-uri'
module DriftingRuby
    module Commands
        class GetEpisode < SlackRubyBot::Bot::Base
            command 'get_latest_episode' do |client,data,_match|
                url = 'https://www.driftingruby.com/episodes/feed.rss'
                rss = Rss.Parser.parse(open(url).read,false).items.first
                client.say(channel:data.channel, text: rss.link)


        end
    end
end