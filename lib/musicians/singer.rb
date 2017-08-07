class Singer < Musician
  def introduction
    if instrument_behavior.class == VocalBehavior
      puts "I love to sing"
    elsif instrument_behavior.class == BassGuitarBehavior
      puts "I'm a singer that sometimes plays the bass!"
    end
  end
end
