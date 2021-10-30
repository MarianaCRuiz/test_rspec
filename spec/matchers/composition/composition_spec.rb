describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails')}
  it { expect(fruit).to eq('A').or eq('B').or eq('C') }
end