class Singer < Musician
	def initialize(instrument_behavior=nil)
		@instrument_behavior = instrument_behavior || VocalBehavior
		@dance_behavior = CanDanceBehavior
	end

  def display
    puts "I love to sing"
  end
end
