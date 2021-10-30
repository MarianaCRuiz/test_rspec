require 'person'

describe 'Class Attributes' do
  let(:person) { Person.new }
  it 'have_attributes' do
    person.name = 'Fulano'
    person.age = 12
    expect(person).to have_attributes(name: starting_with('F'), age: (be >= 10))
    expect(person).to have_attributes(name: 'Fulano', age: 12)
  end
end