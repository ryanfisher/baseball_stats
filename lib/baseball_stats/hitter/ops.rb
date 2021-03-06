module BaseballStats
  class Hitter
    # Calculate and compare a hitter's Onbase plus slugging percentage
    class Ops < BaseballStats::Player::Statistic
      attr_reader :value
      def initialize(args)
        @obp = args.fetch(:obp)
        @slg = args.fetch(:slg)
        @value = @obp.value + @slg.value
      end

      def +(other)
        self.class.new(obp: obp + other.obp, slg: slg + other.slg)
      end

      protected

      attr_reader :obp, :slg
    end
  end
end
