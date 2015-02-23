module BaseballStats
  class Hitter
    # Hitter projections
    class Projections < BaseballStats::Projections
      def [](player)
        Projection.new(super)
      end
    end
  end
end
