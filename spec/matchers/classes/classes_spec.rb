require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of' do
    str = StringNaoVazia.new
    # expect(str).to be_instance_of(String) # str é uma StringNaoVazia filha de String
    expect(str).to be_instance_of(StringNaoVazia)
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer) # Por ser por herança
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
    str = StringNaoVazia.new
    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end
end