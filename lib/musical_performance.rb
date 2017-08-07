module MusicalPerformance
  def self.run

    drummer = Drummer.new(DrumBehavior.new, CannotDanceBehavior.new)
    drummer.introduction
    drummer.play_instrument
    drummer.dance

    singer = Singer.new(VocalBehavior.new, CanDanceBehavior.new)
    singer.introduction
    singer.play_instrument
    singer.dance

    bass_guitarist = BassGuitarist.new(BassGuitarBehavior.new, CanDanceBehavior.new)
    bass_guitarist.introduction
    bass_guitarist.play_instrument
    bass_guitarist.dance

    singer.instrument_behavior = BassGuitarBehavior.new
    singer.introduction
    singer.play_instrument
  end
end
