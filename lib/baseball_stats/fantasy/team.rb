module BaseballStats
  class Fantasy
    # A fantasy team
    class Team
      attr_reader :manager
      def initialize(args)
        @league = args.fetch(:league)
        @hitters = args.fetch(:hitters, [])
        @pitchers = args.fetch(:pitchers, [])
        @manager = args[:manager]
      end

      def add_hitter(hitter)
        hitters << hitter
      end

      def add_pitcher(pitcher)
        pitchers << pitcher
      end

      def projection(stat)
        hitters.map { |hitter| hitter.projected(stat) }.reduce(:+)
      end

      private

      attr_reader :league
      attr_accessor :hitters, :pitchers
    end
  end
end
