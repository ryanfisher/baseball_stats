module BaseballStats
  class Fantasy
    # A fantasy league containing a set of teams
    class League
      def initialize(args)
        @projections = args[:projections]
      end
    end
  end
end
