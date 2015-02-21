require 'csv'

module BaseballStats
  class Projections
    # A projections spreadsheet
    class Spreadsheet
      def initialize(sheet)
        @csv = CSV.open(sheet, 'r:bom|utf-8').readlines
        @headers = @csv[0]
      end

      def lines
        # All csv lines after the header
        @_lines ||= csv[1..-1].map { |line| player_hash line }
      end

      private

      attr_reader :csv, :headers

      def player_hash(line)
        player = {}
        line.each_with_index do |value, index|
          player[headers[index]] = value
        end
        player
      end
    end
  end
end
