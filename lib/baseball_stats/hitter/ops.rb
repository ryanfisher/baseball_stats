module BaseballStats
  class Hitter
    class Ops < BaseballStats::Player::Stat
      attr_reader :value
      def initialize(args)
        @obp = args.fetch(:obp)
        @slg = args.fetch(:slg)
        @value = @obp.value + @slg.value
      end

      protected

      attr_reader :obp, :slg
    end
  end
end
