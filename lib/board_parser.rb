class BoardParser
  def self.call(board_string)
    new(board_string).call
  end

  def initialize(board_string)
    @board_string = board_string
  end

  def call
    (0...board_length).each_with_object([]) do |iterator, array|
      if iterator % 9 == 0
        array.push(board_string[iterator...iterator + 9]
                .split('')
                .map(&:to_i))
      end
    end
  end

  private

  attr_reader :board_string

  def board_length
    @board_length ||= board_string.length
  end
end
