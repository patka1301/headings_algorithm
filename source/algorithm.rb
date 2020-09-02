class Algorithm
  def initialize(dataset)
    @dataset = dataset
    @numbering = {}
  end

  def call
    dataset.map(&method(:formatted_line))
  end

  private

  attr_reader :dataset, :numbering

  def formatted_line(data)
    "#{indentation(data[:heading_level])} #{number(data[:heading_level])}. #{data[:title].capitalize}"
  end

  def indentation(level)
    tab * level
  end

  def tab
    '    '
  end

  def number(level)
    clear_numbering(level)
    update_numbering(level)
    find_number(level)
  end

  def clear_numbering(level)
    numbering.delete_if { |k, _v| k > level }
  end

  def update_numbering(level)
    if numbering.key?(level)
      numbering[level] += 1
    else
      numbering[level] = 1
    end
  end

  def find_number(level)
    (0..level).to_a.map { |stage| numbering[stage] || 1 }.join('.')
  end
end
