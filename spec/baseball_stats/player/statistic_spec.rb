require 'spec_helper'

describe BaseballStats::Player::Statistic do
  subject { described_class.new(data) }

  let(:data) { 'N/A' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
