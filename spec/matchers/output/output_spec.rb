describe 'Matcher output' do
  it { expect{ puts 'blabla' }.to output.to_stdout }
  it { expect{ print 'blabla' }.to output('blabla').to_stdout }
  it { expect{ puts 'blabla' }.to output(/blabla/).to_stdout }

  it { expect{ warn  'blabla' }.to output.to_stderr }
  it { expect{ warn 'blabla' }.to output("blabla\n").to_stderr }
  it { expect{ warn 'blabla' }.to output(/blabla/).to_stderr }
end