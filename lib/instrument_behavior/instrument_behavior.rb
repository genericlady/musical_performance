module InstrumentBehavior
  def self.play_instrument
    error_message =
      "\nERROR: Missing behavior for InstrumentBehavior.play_instrument"
    begin
      raise NotImplementedError, error_message
    rescue NotImplementedError => error
      puts error.message
      puts error.backtrace.join("\n")
    end
  end

end

