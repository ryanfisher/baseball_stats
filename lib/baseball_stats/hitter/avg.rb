module BaseballStats
  class Hitter
    # Calculate and compare a hitter's average
    class Avg < BaseballStats::Player::Stat
      attr_reader :hits, :ab, :value
      def initialize(hits, ab)
        @hits = hits.to_i
        @ab = ab.to_i
        @value = @ab == 0 ? 0 : @hits.to_f / @ab
      end

      def better_than?(other)
        value > other.value
      end

      def +(other)
        self.class.new(hits + other.hits, ab + other.ab)
      end
    end
  end
end
