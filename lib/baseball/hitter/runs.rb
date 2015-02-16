module Baseball
  class Hitter
    class Runs < Baseball::Player::Stat
      attr_reader :value
      def initialize(runs)
        @value = runs.to_i
      end

      def betterThan?(other)
        value > other.value
      end

      def +(other)
        self.class.new(value + other.value)
      end
    end
  end
end
