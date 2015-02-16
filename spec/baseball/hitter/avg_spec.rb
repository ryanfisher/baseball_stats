require 'spec_helper'

describe Baseball::Hitter::Avg do
  subject { described_class.new(hits, ab) }

  let(:hits) { '150' }
  let(:ab)   { '580' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end

    context 'when ab is 0' do
      let(:ab) { '0' }

      it 'sets value to 0 without ZeroDivisionError' do
        expect(subject.value).to be 0
      end
    end
  end

  describe '#hits' do
    it 'should return the number of hits' do
      expect(subject.hits).to be 150
    end
  end

  describe '#ab' do
    it 'should return the number of ab' do
      expect(subject.ab).to be 580
    end
  end

  describe '#betterThan?' do
    context 'when average is better than subject' do
      let(:average) { described_class.new('180', '600') }

      it 'should be false' do
        expect(average.betterThan?(subject)).to be false
      end
    end

    context 'when average is worse than subject' do
      let(:average) { described_class.new('155', '600') }

      it 'should be false' do
        expect(average.betterThan?(subject)).to be false
      end
    end

    context 'when average is equal than subject' do
      let(:average) { described_class.new('75', '290') }

      it 'should be false' do
        expect(average.betterThan?(subject)).to be false
      end
    end
  end
end
