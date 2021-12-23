describe 'Test Double' do
  it 'doubles and messages' do
    user = double('User')
    allow(user).to receive_messages(name: 'Nome1', passord: 'secret')
    # puts user.inspect
    expect(user.name).to eq('Nome1')
    expect(user.passord).to eq('secret')
  end
  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Nome1', passord: 'secret')
    user.abc
    expect(user.name).to eq('Nome1')
    expect(user.passord).to eq('secret')
  end
end