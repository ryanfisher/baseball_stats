module Baseball
  class Hitter
    class Avg < Baseball::Player::Stat
      attr_reader :hits, :ab, :value
      def initialize(hits, ab)
        @hits = hits.to_i
        @ab = ab.to_i
        @value = @ab == 0 ? 0 : @hits / @ab
      end

      def betterThan?(other)
        value > other.value
      end
    end
  end
end
