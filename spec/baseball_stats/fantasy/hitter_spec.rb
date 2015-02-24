require 'spec_helper'

describe BaseballStats::Fantasy::Hitter do
  subject { described_class.new(data) }

  let(:data)       { { projection: projection } }
  let(:projection) { {}                         }

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
