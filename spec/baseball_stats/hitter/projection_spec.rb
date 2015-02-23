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
end
