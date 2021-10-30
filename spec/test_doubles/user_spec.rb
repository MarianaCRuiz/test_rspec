describe 'Test Double' do
  it 'doubles and messages' do
    user = double
    allow(user).to receive_messages(name: 'Nome1', passord: 'secret')
    # puts user.inspect
    expect(user.name).to eq('Nome1')
    expect(user.passord).to eq('secret')
  end
end