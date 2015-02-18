require 'spec_helper'

describe BaseballStats::Hitter::Slg do
  subject { described_class.new(data) }

  let(:data) { {tb: '100', ab: '200'} }

  describe '.new' do
    it 'should return an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    it 'should be .500' do
      expect(subject.value).to be 0.500
    end
  end
end
