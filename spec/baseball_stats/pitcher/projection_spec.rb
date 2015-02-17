require 'spec_helper'

describe BaseballStats::Pitcher::Projection do
  subject { described_class.new }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
