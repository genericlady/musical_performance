class Musician
  attr_accessor :instrument_behavior, :dance_behavior

  def initialize(instrument_behavior, dance_behavior)
    @instrument_behavior = instrument_behavior
    @dance_behavior = dance_behavior
  end

  def play_instrument
    instrument_behavior.play_instrument
  end

  def dance
    dance_behavior.dance
  end
end
