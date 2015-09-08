require 'board'

describe Board do
  let(:ship){double :ship}

  it 'can have a ship' do
    count = subject.ships.count
    subject.place(ship)
    expect(subject.ships.count).to eq(count + 1)
  end

  it 'can place a ship' do
    expect(subject).to respond_to(:place).with(1).argument
  end

  it 'can report a miss' do
    board = Board.new
    ship = Ship.new('a1')
    board.place(ship)
    expect(board.receive_a_hit('b1')).to eq('miss')
  end

  it 'can report a hit' do
    board = Board.new
    ship = Ship.new('a1')
    board.place(ship)
    expect(board.receive_a_hit('a1')).to eq('hit')
  end

  it 'can report a hit when there are multiple ships on the board' do
    board = Board.new
    ship1 = Ship.new('a1')
    ship2 = Ship.new('a2')
    ship3 = Ship.new('a3')
    board.place(ship1)
    board.place(ship2)
    board.place(ship3)
    expect(board.receive_a_hit('a3')).to eq('hit')
  end

end
