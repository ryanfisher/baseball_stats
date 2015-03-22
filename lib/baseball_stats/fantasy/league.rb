require 'yaml'

module BaseballStats
  class Fantasy
    # A fantasy league containing a set of teams
    class League
      def initialize(args)
        @projections = args.fetch(:projections) { default_projections }
        teams YAML.load_file(args.fetch(:teams) { default_teams })
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

      def default_projections
        BaseballStats::Hitter::Projections.new(
          'data/projections/2015/FanGraphsFans.csv'
        )
      end

      def default_teams
        'data/fantasy/teams/keeper_2015.yml'
      end

      attr_reader :projections
    end
  end
end
