require 'calculator'

# RSpec.describe para poder invocar o spec_helper.rb de forma não tradicional
describe Calculator, "Sobre a Calculadora" do

  # subject(:calc) { described_class.new() } # o describe instancia uma variavel do objeto o (subject)

  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3,0)}.to raise_exception # por ser algo muito genérico, melhor especificar o erro
      expect{subject.div(3,0)}.to raise_error("divided by 0") # mesma coisa que o de baixo
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError) 
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, "divided by 0") 
      expect{subject.div(3,0)}.to raise_error(/divided/) # pode usar regex tbm
      # se o conteúdo der um erro, tem que por entre chaves para poder passar o teste
    end
  end

  context '#sum' do
      it 'with positive numbers' do
        result = subject.sum(5, 7)
        expect(result).to eq(12)
        expect(result).not_to eq(1)
      end

      it 'with negative and positive numbers' do
        result = subject.sum(-5, 7)
        expect(result).to eq(2)
      end

      it 'with negative numbers' do
        result = subject.sum(-5, -7)
        expect(result).to eq(-12)
      end
  end
end