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
            projection = projections[hitter]
            Hitter.new(name: hitter, projection: projection) if projection
          end.compact
          Team.new(manager: team['name'], league: self, hitters: hitters)
        end
      end

      def printed_stat_totals
        teams.each do |team|
          print "#{team.manager} "
          HITTER_STATS.each { |stat| print "#{team.projection(stat).value} " }
          print "\n"
        end

        # Return nil so teams objects are printed out in console
        nil
      end

      def hitting_ranks
        totals = {}
        sorted_grouped_stats.each do |stat|
          count = 0
          stat.each do |_, team|
            totals[team] ||= 0
            totals[team] += count
            count += 1
          end
        end

        totals
      end

      def sorted_grouped_stats
        grouped_stat_totals.map { |stats| stats.sort_by { |elem| elem[0] } }
      end

      HITTER_STATS = %w(runs hr rbi sb avg ops)

      private

      def grouped_stat_totals
        HITTER_STATS.map do |stat|
          teams.map do |team|
            [team.projection(stat).value, team.manager]
          end
        end
      end

      def default_projections
        BaseballStats::Hitter::Projections.new(
          'data/projections/2016/FanGraphsFans.csv'
        )
      end

      def default_teams
        'data/fantasy/teams/keeper_2016.yml'
      end

      attr_reader :projections
    end
  end
end
