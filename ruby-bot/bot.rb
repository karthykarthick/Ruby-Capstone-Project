# frozen_string_literal: true

module DriftingRuby
  class Bot < SlackRubyBot::Bot
    help do
      title 'Drifting Ruby Bot'
      desc 'This bot is about Drifting Ruby.'
      command :get_latest_episode do
        title 'get_latest_episode'
        desc 'Returns the url of the latest Drifting Ruby Episode'
        long_desc 'Returns the url of the latest Drifting Ruby Episode'
      end
    end
  end
end
