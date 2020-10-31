class RowChecker
  def self.call(board, row, number)
    new(board, row, number).call
  end

  def initialize(board, row, number)
    @board = board
    @row = row
    @number = number
  end

  def call
    (0...board[row].length).each do |col|
      if board[row][col] == number
        return false
      end
    end

    true
  end

  private

  attr_reader :board, :row, :number
end
