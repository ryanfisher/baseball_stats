require 'spec_helper'

describe BaseballStats::Hitter::Obp do
  subject { described_class.new(data) }

  let(:data) { { hits: '0', bb: '0', ab: '0' } }

  describe '.new' do
    it 'should return an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    context 'with default values' do
      it 'should be a value of 0' do
        expect(subject.value).to be 0
      end
    end

    context 'with other values' do
      let(:data) { { hits: '100', bb: '100', ab: '400' } }

      it 'should be a value of .400' do
        expect(subject.value).to be 0.400
      end
    end
  end
end
