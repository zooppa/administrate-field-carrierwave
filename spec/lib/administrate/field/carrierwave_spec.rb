require 'spec_helper'

describe Administrate::Field::Carrierwave do
  subject { Administrate::Field::Carrierwave.new(:field, data, :show) }

  describe '#to_partial_path' do
    let(:data) { true }

    it 'returns a partial based on the page being rendered' do
      path = subject.to_partial_path
      expect(path).to eq('/fields/carrierwave/show')
    end
  end
end
