module BaseballStats
  class Fantasy
    # A fantasy hitter
    class Hitter < BaseballStats::Hitter
      def initialize(args)
        @projection = args.fetch(:projection)
      end

      def projected(stat)
        projection.send(stat.to_sym)
      end

      private

      attr_reader :projection
    end
  end
end
