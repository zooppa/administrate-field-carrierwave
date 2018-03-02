require 'spec_helper'

describe Administrate::Field::Carrierwave do
  subject { Administrate::Field::Carrierwave.new(:field, data, :show) }

  let(:data) { 'image.jpg' }
  let(:options) { {} }

  before { allow(subject).to receive(:options).and_return(options) }

  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      path = subject.to_partial_path
      expect(path).to eq('/fields/carrierwave/show')
    end
  end

  describe '#image' do
    let(:output) { subject.image }

    context 'with nil' do
      before do
        allow(subject).to receive(:options).and_return(options)
      end

      it 'returns nil' do
        expect(output).to be_nil
      end
    end

    context 'with a valid option' do
      let(:options) { { image: :standard } }

      it 'returns the value' do
        expect(output).to eq :standard
      end
    end
  end

  describe '#image_on_index?' do
    let(:output) { subject.image_on_index? }

    context 'with nil' do
      it 'returns false' do
        expect(output).to be false
      end
    end

    context 'with a valid option' do
      let(:options) { { image_on_index: true } }

      it 'returns the value' do
        expect(output).to be true
      end
    end
  end

  describe '#multiple?' do
    let(:output) { subject.multiple? }

    context 'with nil' do
      it 'returns false' do
        expect(output).to be false
      end
    end

    context 'with a valid option' do
      let(:options) { { multiple: true } }

      it 'returns the value' do
        expect(output).to be true
      end
    end
  end

  describe '#remove?' do
    let(:output) { subject.remove? }

    context 'with nil' do
      it 'returns false' do
        expect(output).to be false
      end
    end

    context 'with a valid option' do
      let(:options) { { remove: true } }

      it 'returns the value' do
        expect(output).to be true
      end
    end
  end

  describe '#remote_url?' do
    let(:output) { subject.remote_url? }

    context 'with nil' do
      it 'returns false' do
        expect(output).to be false
      end
    end

    context 'with a valid option' do
      let(:options) { { remote_url: true } }

      it 'returns the value' do
        expect(output).to be true
      end
    end
  end

  describe '#files' do
    let(:output) { subject.files }

    it 'returns an array' do
      expect(output).to be_an(Array)
    end

    context 'when single file' do
      it 'returns an array with one element' do
        expect(output.length).to eq 1
      end
    end

    context 'when multiple files' do
      let(:data) { ['image-01.jpg', 'image-02.jpg'] }

      it 'returns a multi-element array' do
        expect(output.length).to eq 2
      end
    end
  end

  describe '#file' do
    let(:output) { subject.file }
    let(:data) { ['image-01.jpg', 'image-02.jpg'] }

    it 'returns the first file in the array' do
      expect(output).to eq 'image-01.jpg'
    end
  end
end
