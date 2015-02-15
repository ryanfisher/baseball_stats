module Baseball
  class Player
    class Stat
      attr_reader :stat
      def initialize(stat)
        @stat = stat
      end
    end
  end
end
