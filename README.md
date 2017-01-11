# Musical Performance
This is an example of a Java design pattern called a Strategy Pattern in Ruby.
This is also sample code from a Learn.co Study group on 01/10/2017.

# A possible anti-pattern
It may be a good idea to explicitly set a classes behavior at initialization.
In the following example `Drummer` has its behaviors set at initializaiton and
the Singer has the behavior set by overriding the initialize from it's parent
class with default behavior.

```ruby
module MusicalPerformance
  def self.run
    drummer = Drummer.new(DrumBehavior, CannotDanceBehavior)
    singer = Singer.new
  end
end
```

The idea of overriding the initialize to set a default behavior may be
considered an anti pattern. It can be argued that it's a good idea to set
behavior explicitly at initialization and anything else is an anti pattern. So
the example we use for `Singer` should be considered a possible anti-pattern and
needs to be used with extreme prejudice.

```ruby
class Singer < Musician
  def initialize(instrument_behavior=nil)
    @instrument_behavior = instrument_behavior || VocalBehavior
    @dance_behavior = CanDanceBehavior
  end

  def display
    puts "I love to sing"
  end
end
```

This is being left in the code as an example because it's worth noting that this
is an option. Use your best judgement.
