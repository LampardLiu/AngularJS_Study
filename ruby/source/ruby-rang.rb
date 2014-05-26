class UV
  include Comparable
  attr :volume

  def initialize(volume)  # 0..9
    @volume = volume
  end

  def inspect
    '#' * @volume
  end

#Support for rangs
  def <=>(other)
    self.volume <=> other.volume
  end

  def succ
    raise(IndexError, "volume too bigger") if @volume >= 9
    UV.new(@volume.succ)
  end
end

medium_volume = UV.new(4)..UV.new(7)

medium_volume.to_a.each{|obj| puts obj.inspect}