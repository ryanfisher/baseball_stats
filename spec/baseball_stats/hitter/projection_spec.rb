require 'spec_helper'

describe BaseballStats::Hitter::Projection do
  subject { described_class.new(args) }

  let(:args) { {} }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#runs' do
    let(:args) { { 'runs' => '90' } }

    it 'returns a runs object' do
      expect(subject.runs).to be_instance_of BaseballStats::Hitter::Runs
    end
  end

  describe '#hr' do
    let(:args) { { 'hr' => '42' } }

    it 'returns a hr object' do
      expect(subject.hr).to be_instance_of BaseballStats::Hitter::Hr
    end
  end

  describe '#rbi' do
    let(:args) { { 'rbi' => '115' } }

    it 'returns a rbi object' do
      expect(subject.rbi).to be_instance_of BaseballStats::Hitter::Rbi
    end
  end

  describe '#slg' do
    let(:args) do
      {
        'hr' => '10',
        '3b' => '10',
        '2b' => '10',
        'hits' => '50',
        'ab' => '150'
      }
    end

    it 'returns a slg object' do
      expect(subject.slg).to be_instance_of BaseballStats::Hitter::Slg
    end

    it 'should have a correct value' do
      expect(subject.slg.value.round(3)).to eq 0.733
    end
  end
end
