require './lib/player.rb'

describe Player do
  it 'should return the player name' do
    name = 'Simon'

    player = Player.new(name: name)

    expect(player.name).to eq(name)
  end
end