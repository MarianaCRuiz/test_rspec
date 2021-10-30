describe (1..5) do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(0, 6)
    is_expected.to cover(2)
  end
  it { expect(subject).to cover(2) }
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2, 5) }
  it { is_expected.not_to cover(0, 6) }
end
