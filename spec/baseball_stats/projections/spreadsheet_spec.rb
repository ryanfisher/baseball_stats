require 'spec_helper'

describe BaseballStats::Projections::Spreadsheet do
  subject { described_class.new(sheet) }

  let(:csv)     { double(:csv, readlines: sheet)             }
  let(:hitter1) { ['Ryan Fisher', '.350', '45', '150', '55'] }
  let(:hitter2) { ['Tony Gwynn', '.394', '12', '64', '5']    }
  let(:sheet)   { [%w(Name avg hr rbi sb), hitter1, hitter2] }

  before do
    expect(CSV).to receive(:open) { csv }
  end

  describe '.new' do
    it 'should be an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#lines' do
    it 'should return a line for each hitter' do
      expect(subject.lines.length).to be 2
    end

    it 'should return an array of hashes that contain name keys' do
      expect(subject.lines[0]['name']).to eq 'Ryan Fisher'
      expect(subject.lines[1]['name']).to eq 'Tony Gwynn'
    end

    context 'checking memoization' do
      let(:csv_obj) { double.as_null_object }

      before do
        expect(subject).to receive(:csv) { csv_obj }
      end

      it 'should only run calculations the first time lines is called' do
        expect(subject.lines).to eq subject.lines
      end
    end
  end
end
