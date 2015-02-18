module BaseballStats
  class Hitter
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
