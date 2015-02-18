require 'spec_helper'

describe BaseballStats::Hitter::Ops do
  subject { described_class.new(data) }

  let(:data) { {obp: obp, slg: slg}       }
  let(:obp)  { double(:obp, value: 0.365) }
  let(:slg)  { double(:ops, value: 0.621) }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    it 'should be the value of obp and slg added together' do
      expect(subject.value).to be 0.986
    end
  end
end
