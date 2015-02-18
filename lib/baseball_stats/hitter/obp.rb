module BaseballStats
  class Hitter
    # Calculate and compare hitter's on base percentage
    class Obp < BaseballStats::Player::Statistic
      attr_reader :hits, :bb, :ab, :hbp, :sf
      def initialize(args)
        @hits = args.fetch(:hits).to_i
        @bb = args.fetch(:bb).to_i
        @ab = args.fetch(:ab).to_i
        @hbp = args.fetch(:hbp, 0).to_i
        @sf = args.fetch(:sf, 0).to_i
      end

      def value
        if plate_appearances == 0
          0
        else
          (hits + bb + hbp) / plate_appearances.to_f
        end
      end

      private

      def plate_appearances
        ab + bb + hbp + sf
      end
    end
  end
end
