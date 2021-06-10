class Oystercard
  LIMIT = 90
  attr_reader :balance

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    fail "Exceeds top-up limit of £90" if amount + balance > LIMIT
    @balance += amount
  end
  def deduct(fare)
  end
  def touch_in
    @in_journey = true
  end
  def touch_out
    @in_journey = false
  end
  def in_journey?
    @in_journey
  end
end
