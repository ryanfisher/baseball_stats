require 'spec_helper'

describe Baseball::Hitter::Slg do
  let(:data) { '' }

  describe '.new' do
    subject { described_class.new(data) }

    it 'should return an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
