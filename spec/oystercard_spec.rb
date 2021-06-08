require 'oystercard'

describe Oystercard do
  it 'shows the card balance' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
  it { is_expected.to respond_to(:top_up).with(1).argument }

  it 'can top-up the card balance' do
    expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
  end
end

  describe '#deduct' do
  it {is_expected.to respond_to(:deduct).with(1).argument}

end

  it 'raises and error when top-up limit exceeded' do
    expect{ subject.top_up 100 }.to raise_error 'Exceeds top-up limit of £90'
  end

end
