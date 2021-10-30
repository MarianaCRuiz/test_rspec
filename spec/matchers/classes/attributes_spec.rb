require 'person'

describe 'Class Attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Fulano'
    person.age = 12
    expect(person).to have_attributes(name: starting_with('F'), age: (be >= 10))
    expect(person).to have_attributes(name: 'Fulano', age: 12)
    #expect(person2).to have_attributes(:name)
  end
end