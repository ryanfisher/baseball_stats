require 'spec_helper'

describe Baseball::Hitter::Projection do
  subject { described_class.new(args) }

  let(:args) do
    {
      runs: runs,
      hr: hr,
      rbi: rbi,
      avg: avg,
      sb: sb,
      ops: ops
    }
  end
  let(:runs) { nil }
  let(:hr)   { nil }
  let(:rbi)  { nil }
  let(:sb)   { nil }
  let(:avg)  { nil }
  let(:ops)  { nil }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
