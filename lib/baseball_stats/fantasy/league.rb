require 'yaml'

module BaseballStats
  class Fantasy
    # A fantasy league containing a set of teams
    class League
      def initialize(args)
        @projections = args.fetch(:projections)
        teams YAML.load_file(args.fetch(:teams))
      end

      def teams(team_list = [])
        @_teams ||= team_list.map do |team|
          hitters = team['hitters'].map do |hitter|
            Hitter.new(name: hitter, projection: projections[hitter])
          end
          Team.new(league: self, hitters: hitters)
        end
      end

      private

      attr_reader :projections
    end
  end
end
