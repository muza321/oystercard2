require 'oystercard'

describe Oystercard do
  it 'shows the card balance' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    # subject.top_up(Oystercard::LIMIT)
  it { is_expected.to respond_to(:top_up).with(1).argument }

  it 'can top-up the card balance' do
    expect{ subject.top_up 5 }.to change{ subject.balance }.by 5
  end
  it 'raises and error when top-up limit exceeded' do
    expect{ subject.top_up 100 }.to raise_error 'Exceeds top-up limit of £90'
  end

  describe '#deduct' do
    it {is_expected.to respond_to(:deduct).with(1).argument}
  end
  describe '#touch_in' do
   it "can touch in" do
    subject.touch_in
    expect(subject).to be_in_journey
  end
 end
  describe '#touch_out' do
    it "can touch out " do
     subject.touch_in
     subject.touch_out
     expect(subject).not_to be_in_journey
    # it {is_expected.to respond_to(:touch_out)}
  end
end
  describe '#in_journey' do
    it {is_expected.to respond_to(:in_journey?)}
  end
  it 'is initially not in a journey' do
    expect(subject).not_to be_in_journey
  end
end




end
