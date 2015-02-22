module BaseballStats
  class Fantasy
    # A fantasy team
    class Team
      def initialize(args)
        @league = args.fetch(:league)
      end
    end
  end
end
