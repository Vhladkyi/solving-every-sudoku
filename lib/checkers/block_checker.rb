class BlockChecker
  def self.call(board, row, column, number)
    new(board, row, column, number).call
  end

  def initialize(board, row, column, number)
    @board = board
    @row = row
    @column = column
    @number = number
  end

  def call
    (lower_row...upper_row).each do |current_row|
      (lower_column...upper_column).each do |current_column|
        if board[current_row][current_column] == number
          return false
        end
      end
    end

    true
  end

  private

  attr_reader :board, :row, :column, :number

  def upper_row
    @upper_column ||= lower_row + 3
  end

  def lower_row
    @lower_row ||= 3 * (row / 3)
  end

  def upper_column
    @upper_column ||= lower_column + 3
  end

  def lower_column
    @lower_column ||= 3 * (column / 3)
  end
end
