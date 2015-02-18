require 'spec_helper'

describe BaseballStats::Hitter::Projection do
  subject { described_class.new(args) }

  let(:args) do
    {
      runs: runs,
      hr: hr,
      rbi: rbi,
      hits: hits,
      ab: ab,
      sb: sb,
      obp: obp,
      slg: slg
    }
  end
  let(:runs) { nil }
  let(:hr)   { nil }
  let(:rbi)  { nil }
  let(:sb)   { nil }
  let(:hits) { nil }
  let(:ab)   { nil }
  let(:obp)  { nil }
  let(:slg)  { nil }
  let(:ops_obj) { double(:ops) }

  before do
    expect(BaseballStats::Hitter::Ops).to receive(:new) { ops_obj }
  end

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
