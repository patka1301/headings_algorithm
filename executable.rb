require './source/algorithm'

SET1 = [
  { id: 1, title: 'heading1', heading_level: 0 },
  { id: 2, title: 'heading2', heading_level: 2 },
  { id: 3, title: 'heading3', heading_level: 1 },
  { id: 4, title: 'heading4', heading_level: 1 }
].freeze

SET2 = [
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
].freeze

puts Algorithm.new(SET2).call
