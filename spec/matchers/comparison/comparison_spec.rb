describe 'Matchers de Comparação' do
  it '>' do
    expect(5).to be > 1
  end
  it '>=' do
    expect(5).to be >= 5
    expect(5).to be >= 5
  end
  it '<' do
    expect(2).to be < 5
  end
  it '<=' do
    expect(2).to be <= 5
    expect(5).to be <= 5
  end
  it 'be_between inclusive' do
    expect(2).to be_between(2, 7).inclusive
  end
  it 'be_between inclusive / aggregate failures' do
    aggregate_failures do
      expect(2).to be_between(2, 7).inclusive
      # expect(1).to be_between(2, 7).inclusive
      # expect(8).to be_between(2, 7).inclusive
    end
  end
  it 'be_between inclusive / aggregate failures 2', :aggregate_failure do
    expect(2).to be_between(2, 7).inclusive
    # expect(1).to be_between(2, 7).inclusive
    # expect(8).to be_between(2, 7).inclusive
  end 
  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
  end
  it 'match' do
    expect('fulano@blabla.com').to match(/..@../)
  end
  it 'start_with' do
    expect('fulano bla').to start_with('fulano')
    expect([1, 2, 3]).to start_with(1)
  end
  it 'end_with' do
    expect('fulano bla').to end_with('bla')
    expect([1, 2, 3]).to end_with(3)
  end
end