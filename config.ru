# config.ru
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'ruby_bot'

DriftingRuby::Bot.run
