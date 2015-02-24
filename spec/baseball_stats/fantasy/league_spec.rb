require 'spec_helper'

describe BaseballStats::Fantasy::League do
  subject { described_class.new(data) }

  let(:data)        { { projections: projections, teams: teams } }
  let(:projections) { double(:projections)                       }
  let(:teams)       { 'data/team.yml'                            }
  let(:yaml)        { []                                         }

  before do
    expect(YAML).to receive(:load_file).with(teams) { yaml }
  end

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end

  context 'with loaded team' do
    let(:yaml) { [{ 'hitters' => ['Miguel Cabrera'] }] }

    before do
      expect(projections).to receive(:[]).with('Miguel Cabrera')
    end

    describe '.new' do
      it 'should be an instance of the described class' do
        expect(subject).to be_instance_of described_class
      end
    end

    describe '#teams' do
      it 'should be an instance of an array of Teams' do
        expect(subject.teams[0]).to be_instance_of BaseballStats::Fantasy::Team
      end
    end
  end
end
