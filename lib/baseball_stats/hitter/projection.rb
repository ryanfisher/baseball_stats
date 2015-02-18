module BaseballStats
  class Hitter
    class Projection < BaseballStats::Player::Projection
      attr_reader :runs, :hr, :rbi, :sb, :avg, :ops
      def initialize(args)
        @runs = Runs.new(args.fetch(:runs))
        @hr = Hr.new(args.fetch(:hr))
        @rbi = Rbi.new(args.fetch(:rbi))
        @sb = Sb.new(args.fetch(:sb))
        @avg = Avg.new(args.fetch(:hits), args.fetch(:ab))
        @ops = Ops.new(obp: args.fetch(:obp), slg: args.fetch(:slg))
      end
    end
  end
end
