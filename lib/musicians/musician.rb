class Musician
  attr_accessor :instrument_behavior, :dance_behavior

  def initialize(instrument_behavior=nil, dance_behavior=nil)
    @instrument_behavior = instrument_behavior || InstrumentBehavior
		@dance_behavior = dance_behavior || DanceBehavior
  end

  def play_instrument
    instrument_behavior.play_instrument
  end

  def dance
    dance_behavior.dance
  end
end
