module BaseballStats
  class Player
    # Calculate and compare a player statistic
    class Stat
      attr_reader :value
      def initialize(stat)
        @value = stat.to_i
      end

      def better_than?(other)
        value > other.value
      end

      def +(other)
        self.class.new(value + other.value)
      end
    end
  end
end
