module BaseballStats
  class Fantasy
    # A fantasy hitter
    class Hitter < BaseballStats::Hitter
      def initialize(args)
        @projection = Projection.new(args.fetch(:projection))
      end
    end
  end
end
