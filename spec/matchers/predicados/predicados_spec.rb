describe 'Predicados' do # são métodos do ruby que tem ?, como: .nil? .blank? etc
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(1).not_to be_even
  end
end