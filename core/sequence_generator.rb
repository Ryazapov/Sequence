class SequenceGenerator
  attr_reader :sequence

  def initialize
    @sequence = '1'
  end

  def to_s
    sequence
  end

  def next_value(n)
    (n).times { self.next }
    sequence
  end

  def next
    sequence.gsub!(/(.)\1*/) { "#{$&.length}#{$1}" }
  end
end
