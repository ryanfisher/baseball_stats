require 'spec_helper'

describe BaseballStats::Fantasy::League do
  subject { described_class.new(data) }

  let(:data)        { { projections: projections } }
  let(:projections) { double(:projections)         }

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
