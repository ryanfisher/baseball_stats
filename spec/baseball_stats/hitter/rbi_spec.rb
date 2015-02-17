require 'spec_helper'

describe BaseballStats::Hitter::Rbi do
  subject { described_class.new(data) }

  let(:data) { '120' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    it 'gives the value of an instance' do
      expect(subject.value).to be 120
    end
  end

  describe '#betterThan?' do
    let(:rbi) { described_class.new('89') }

    it 'should be better than rbi' do
      expect(subject.betterThan?(rbi)).to be true
    end
  end

  describe '#+' do
    let(:other)   { described_class.new('89') }
    let(:new_rbi) { subject + other           }

    it 'should be an instance of described_class' do
      expect(new_rbi).to be_instance_of described_class
    end

    it 'should have a value of the subject and other combined' do
      expect(new_rbi.value).to be 209
    end
  end
end
