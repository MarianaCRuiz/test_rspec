require 'string_not_empty'
describe String do
  describe StringNotEmpty do
    it 'não está vazia' do
      expect(subject).to eq('Nao sou vazio')
    end
  end
end