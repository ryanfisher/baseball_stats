module BaseballStats
  class Hitter
    class Obp < BaseballStats::Player::Stat
      attr_reader :hits, :bb, :ab, :hbp, :sf
      def initialize(args)
        @hits = args.fetch(:hits).to_i
        @bb = args.fetch(:bb).to_i
        @ab = args.fetch(:ab).to_i
        @hbp = args.fetch(:hbp, 0).to_i
        @sf = args.fetch(:sf, 0).to_i
      end

      def value
        denom = ab + bb + hbp + sf
        denom == 0 ? 0 : (hits + bb + hbp) / denom.to_f
      end
    end
  end
end
