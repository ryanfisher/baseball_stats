require 'yaml'

module BaseballStats
  class Fantasy
    # A fantasy league containing a set of teams
    class League
      attr_reader :teams
      def initialize(args)
        @projections = args[:projections]
        @teams = YAML.load_file(args.fetch(:teams))
      end
    end
  end
end
