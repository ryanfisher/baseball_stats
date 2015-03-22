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
          Team.new(manager: team['name'], league: self, hitters: hitters)
        end
      end

      def printed_standings
        teams.each do |team|
          print "#{team.manager} "
          HITTER_STATS.each { |stat| print "#{team.projection(stat).value} " }
          print "\n"
        end

        # Return nil so teams objects are printed out in console
        nil
      end

      HITTER_STATS = %w(runs hr rbi sb avg ops)

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
