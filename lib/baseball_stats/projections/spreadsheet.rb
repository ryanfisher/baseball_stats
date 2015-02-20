require 'csv'

module BaseballStats
  class Projections
    # A projections spreadsheet
    class Spreadsheet
      def initialize(sheet)
        @csv = CSV.new sheet
      end
    end
  end
end
