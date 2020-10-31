class ColumnChecker
  def self.call(board, column, number)
    new(board, column, number).call
  end

  def initialize(board, column, number)
    @board = board
    @column = column
    @number = number
  end

  def call
    (0...board.length).each do |row|
      if board[row][column] == number
        return false
      end
    end

    true
  end

  private

  attr_reader :board, :column, :number
end
