RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    puts "actual #{actual}"
    puts "exp #{expected}"
    actual % expected == 0
  end
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
  description do
    "be a multiple of #{expected}"
  end
end
describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
  # it { is_expected.to be_a_multiple_of(4) }
end