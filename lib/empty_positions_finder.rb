class EmptyPositionsFinder
  def self.call(board)
    new(board).call
  end

  def initialize(board)
    @board = board
  end

  def call
    (0...board.length).each_with_object([]) do |row, array|
      (0...board[row].length).each do |col|
        if board[row][col] == 0
          array << [row, col]
        end
      end
    end
  end

  private

  attr_reader :board
end
