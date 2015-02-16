module Baseball
  class Player
    class Stat
      attr_reader :value
      def initialize(stat)
        @value = stat.to_i
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
