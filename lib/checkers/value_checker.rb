require 'checkers/row_checker'
require 'checkers/column_checker'
require 'checkers/block_checker'

class ValueChecker
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
    RowChecker.call(board, row, number) &&
    ColumnChecker.call(board, column, number) &&
    BlockChecker.call(board, row, column, number)
  end

  private

  attr_reader :board, :row, :column, :number
end
