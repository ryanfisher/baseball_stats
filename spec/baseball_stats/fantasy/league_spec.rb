require 'spec_helper'

describe BaseballStats::Fantasy::League do
  subject { described_class.new(data) }

  let(:data)        { { projections: projections, teams: teams } }
  let(:projections) { double(:projections)                       }
  let(:teams)       { 'data/team.yml'                            }

  before do
    expect(YAML).to receive(:load_file).with(teams)
  end

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
