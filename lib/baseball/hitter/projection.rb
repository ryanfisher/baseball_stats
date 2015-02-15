module Baseball
  class Hitter
    class Projection < Baseball::Player::Projection
      attr_reader :runs, :hr, :rbi, :sb, :avg, :ops
      def initialize(args)
        @runs = Runs.new(args.fetch(:runs))
        @hr = Hr.new(args.fetch(:hr))
        @rbi = Rbi.new(args.fetch(:rbi))
        @sb = Sb.new(args.fetch(:sb))
        @avg = Avg.new(args.fetch(:avg))
        @ops = Ops.new(args.fetch(:ops))
      end
    end
  end
end
