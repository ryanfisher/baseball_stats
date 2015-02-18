module BaseballStats
  class Hitter
    # Calculate and compare a hitter's slugging percentage
    class Slg < Stat
      attr_reader :tb, :ab, :value
      def initialize(args)
        @tb = args.fetch(:tb).to_i
        @ab = args.fetch(:ab).to_i
        @value = tb / ab.to_f
      end
    end
  end
end
