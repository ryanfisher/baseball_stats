require 'spec_helper'

describe BaseballStats::Projections do
  subject { described_class.new('') }

  let(:sheet) { double(:sheet, lines: lines) }
  let(:lines) { []                           }

  before do
    expect(BaseballStats::Projections::Spreadsheet).to receive(:new) { sheet }
  end

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#[]' do
    let(:lines)   { [player1, player2] }
    let(:player1) do
      { 'name' => 'Ryan Fisher', 'hr' => '45', 'avg' => '.350' }
    end
    let(:player2) do
      { 'name' => 'Tony Gwynn', 'hr' => '12', 'avg' => '.394' }
    end

    it 'should be a hash with the correct player data' do
      expect(subject['Ryan Fisher']).to eq player1
      expect(subject['Tony Gwynn']).to eq player2
    end
  end
end
