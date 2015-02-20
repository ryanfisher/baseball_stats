require 'spec_helper'

describe BaseballStats::Projections::Spreadsheet do
  subject { described_class.new(sheet) }

  let(:sheet) { '/file_location' }

  describe '.new' do
    before do
      expect(CSV).to receive(:new).with(sheet)
    end

    it 'should be an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end
end
