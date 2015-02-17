require 'spec_helper'

describe BaseballStats::Hitter::Sb do
  subject { described_class.new(data) }

  let(:data) { '40' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
