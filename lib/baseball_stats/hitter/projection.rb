module BaseballStats
  class Hitter
    # A hitter's projected stat line
    class Projection < BaseballStats::Player::Projection
      # The raw hitter data
      class HitterData
        def initialize(data)
          @data = data
        end

        def [](key)
          symbolized_keys.fetch(key)
        end

        private

        attr_reader :data

        def symbolized_keys
          # TODO: we'll standardize the keys here
          @_symbolized ||= data.each_with_object({}) do |(stat, value), stats|
            stats[stat.to_sym] = value
          end
        end
      end

      def initialize(args)
        @data = HitterData.new(args)
      end

      def runs
        @_runs ||= Runs.new(data[:runs])
      end

      def hr
        @_hr ||= Hr.new(data[:hr])
      end

      def rbi
        @_rbi ||= Rbi.new(data[:rbi])
      end

      def sb
        @_sb ||= Sb.new(data[:sb])
      end

      def avg
        @_avg ||= Avg.new(data[:hits], data[:ab])
      end

      def ops
        @_ops ||= Ops.new(obp: obp, slg: slg)
      end

      def slg
        @_slg ||= Slg.new(tb: data[:tb], ab: data[:ab])
      end

      def obp
        @_obp ||= Obp.new(hits: data[:hits], bb: data[:bb])
      end

      private

      attr_reader :data
    end
  end
end
