require_relative '../ruby_bot'
require_relative '../ruby-bot/commands/get_episodes'

describe 'HelloText' do
  let(:case1) { 'hello' }
  it 'checks method' do
    expect(HelloText.say_hello).to eql('Hello! This is a Bot!')
  end
end
