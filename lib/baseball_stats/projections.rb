require_relative 'projections/spreadsheet'

module BaseballStats
  # A collection of projections that can be looked up by player name
  class Projections
    def initialize(file)
      @sheet = Spreadsheet.new(file).lines
    end

    def [](player)
      # TODO: optimize this so it doesn't loop through the array every time
      # we want a player's statistics
      sheet.find { |line| line['name'] == player }
    end

    private

    attr_reader :sheet
  end
end
