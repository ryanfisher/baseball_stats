describe BaseballStats::Hitter::Projection::HitterData do
  subject { described_class.new(data) }

  let(:data) { {} }

  describe '.new' do
    it 'should be an instance of the described class' do
      expect(subject).to be_instance_of described_class
    end
  end

  context 'with aliases' do
    let(:data)      { { hits: hits_data } }
    let(:hits_data) { double(:hits)       }

    describe ':[]' do
      it 'should add the correct aliases for the data' do
        expect(subject[:h]).to be hits_data
      end

      it 'should work for the original key' do
        expect(subject[:hits]).to be hits_data
      end
    end
  end
end
