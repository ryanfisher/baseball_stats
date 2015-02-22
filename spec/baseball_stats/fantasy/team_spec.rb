require 'spec_helper'

describe BaseballStats::Fantasy::Team do
  subject { described_class.new(data) }

  let(:data)   { { league: league } }
  let(:league) { double(:league)    }

  describe '.new' do
    it 'is an intance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#add_hitter' do
    let(:hitter) { double(:hitter) }

    it 'should add a hitter' do
      expect(subject.add_hitter hitter).to eq [hitter]
    end
  end

  describe '#add_pitcher' do
    let(:pitcher) { double(:pitcher) }

    it 'should add a pitcher' do
      expect(subject.add_pitcher pitcher).to eq [pitcher]
    end
  end
end
