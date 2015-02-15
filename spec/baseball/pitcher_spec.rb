require 'spec_helper'

describe Baseball::Pitcher do
  subject { described_class.new(name) }

  let(:name) { 'Rick Vaughn' }

  describe '.new' do
    it 'should be an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
