module BaseballStats
  class Hitter
    # Calculate and compare a hitter's slugging percentage
    class Slg < Statistic
      attr_reader :tb, :ab, :value
      def initialize(args)
        @tb = args.fetch(:tb).to_i
        @ab = args.fetch(:ab).to_i
        @value = tb / ab.to_f
      end

      def +(other)
        self.class.new(tb: tb + other.tb, ab: ab + other.ab)
      end
    end
  end
end
