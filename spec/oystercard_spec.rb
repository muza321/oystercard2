require 'oystercard'

describe Oystercard do
  it 'shows the card balance' do
    expect(subject.balance).to eq(0)
  end
  
end
