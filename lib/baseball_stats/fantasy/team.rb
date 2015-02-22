module BaseballStats
  class Fantasy
    # A fantasy team
    class Team
      def initialize(args)
        @league = args.fetch(:league)
        @hitters = []
        @pitchers = []
      end

      def add_hitter(hitter)
        hitters << hitter
      end

      def add_pitcher(pitcher)
        pitchers << pitcher
      end

      private

      attr_reader :league
      attr_accessor :hitters, :pitchers
    end
  end
end
