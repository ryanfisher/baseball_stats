require 'spec_helper'

describe Baseball::Hitter::Rbi do
  subject { described_class.new(data) }

  let(:data) { '120' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
