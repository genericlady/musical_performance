module MusicalPerformance
  def self.run

    drummer = Drummer.new(DrumBehavior, CannotDanceBehavior)
    drummer.play_instrument
    drummer.dance

    singer = Singer.new
    singer.play_instrument
    singer.dance

    bass_guitarist = BassGuitarist.new(BassGuitarBehavior, CanDanceBehavior)
    bass_guitarist.play_instrument
    bass_guitarist.dance

    singer.instrument_behavior = BassGuitarBehavior
    singer.play_instrument
  end
end
