require 'person'
shared_examples 'status' do |feeling|
  it "#{feeling}" do
    mood = { happy: 'feliz', sad: 'triste', shy: 'timido'}
    person.send("#{feeling}!")
    expect(person.status).to eq("Sentindo-se #{mood[:"#{feeling}"].capitalize}!")
  end
end
describe 'Person' do
  subject(:person) { Person.new }

  it_behaves_like 'status', 'happy'
  include_examples 'status', 'sad'
  it_should_behave_like 'status', 'shy'
end