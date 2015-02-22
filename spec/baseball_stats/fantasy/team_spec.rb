require 'spec_helper'

describe BaseballStats::Fantasy::Team do
  subject { described_class.new(data) }

  let(:data) { { league: double(:league) } }

  describe '.new' do
    it 'is an intance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
