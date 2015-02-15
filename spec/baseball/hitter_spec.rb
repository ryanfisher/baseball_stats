require 'spec_helper'

describe Baseball::Hitter do
  subject { described_class.new(name) }

  let(:name) { 'Pedro Cerrano' }

  describe '.new' do
    it 'should be an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
