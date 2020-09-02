require './source/algorithm'
require 'byebug'

describe Algorithm do

  describe '#call' do
    subject { described_class.new(dataset).call }

    let(:dataset) do
      [
        { id: 1, title: 'heading1', heading_level: 0 },
        { id: 2, title: 'heading2', heading_level: 3 },
        { id: 3, title: 'heading3', heading_level: 4 },
        { id: 3, title: 'heading4', heading_level: 4 },
        { id: 2, title: 'heading5', heading_level: 3 },
        { id: 4, title: 'heading6', heading_level: 1 },
        { id: 4, title: 'heading7', heading_level: 1 },
        { id: 4, title: 'heading8', heading_level: 2 },
        { id: 4, title: 'heading9', heading_level: 2 },
        { id: 5, title: 'heading10', heading_level: 0 },
        { id: 5, title: 'heading11', heading_level: 0 },
        { id: 5, title: 'heading12', heading_level: 1 },
        { id: 5, title: 'heading13', heading_level: 1 },
        { id: 5, title: 'heading14', heading_level: 2 }
      ]
    end

    let(:expected_response) do
      [
        " 1. Heading1",
        "             1.1.1.1. Heading2",
        "                 1.1.1.1.1. Heading3",
        "                 1.1.1.1.2. Heading4",
        "             1.1.1.2. Heading5",
        "     1.1. Heading6",
        "     1.2. Heading7",
        "         1.2.1. Heading8",
        "         1.2.2. Heading9",
        " 2. Heading10",
        " 3. Heading11",
        "     3.1. Heading12",
        "     3.2. Heading13",
        "         3.2.1. Heading14"
      ]
    end

    it 'returns proper headings' do
      expect(subject).to eq(expected_response)
    end
  end
end
