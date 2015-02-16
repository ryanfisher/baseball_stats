require 'spec_helper'

describe Baseball::Hitter::Hr do
  subject { described_class.new(data) }

  let(:data) { '43' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    it 'gives the value of an instance' do
      expect(subject.value).to be 43
    end
  end

  describe '#betterThan?' do
    let(:hr) { described_class.new('27') }

    it 'should be better than hr' do
      expect(subject.betterThan?(hr)).to be true
    end
  end

  describe '#+' do
    let(:other)  { described_class.new('27') }
    let(:new_hr) { subject + other           }

    it 'should be an instance of described_class' do
      expect(new_hr).to be_instance_of described_class
    end

    it 'should have a value of the subject and other combined' do
      expect(new_hr.value).to be 70
    end
  end
end
