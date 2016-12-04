class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    delimiter = ":"
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 3600) % 60

    return (padded(hours) + delimiter + padded(minutes) \
            + delimiter + padded(seconds))
  end

  def padded(digits)
    if digits >= 10
      return digits.to_s
    else
      return '0' + digits.to_s
    end
  end

end
