require 'spec_helper'

describe BaseballStats::Hitter::Ops do
  subject { described_class.new(data) }

  let(:data) { '1.100' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
