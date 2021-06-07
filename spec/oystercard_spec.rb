require 'oystercard'

describe Oystercard do
  it 'shows the card balance' do
    expect(subject.balance).to eq(0)
  end

  it { is_expected.to respond_to(:top_up).with(1).argument }

  it 'can top-up the card balance' do
    expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
  end

end
