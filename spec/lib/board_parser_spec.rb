require 'board_parser'

RSpec.describe BoardParser do
  describe '.call' do
    subject(:result) { described_class.call(board_string) }

    let(:board_string) do
      "09000000600096048500058100000400000051720"\
      "0900602000370100804020706000810300090000"
    end

    let(:board) do
      [
        [0, 9, 0, 0, 0, 0, 0, 0, 6],
        [0, 0, 0, 9, 6, 0, 4, 8, 5],
        [0, 0, 0, 5, 8, 1, 0, 0, 0],
        [0, 0, 4, 0, 0, 0, 0, 0, 0],
        [5, 1, 7, 2, 0, 0, 9, 0, 0],
        [6, 0, 2, 0, 0, 0, 3, 7, 0],
        [1, 0, 0, 8, 0, 4, 0, 2, 0],
        [7, 0, 6, 0, 0, 0, 8, 1, 0],
        [3, 0, 0, 0, 9, 0, 0, 0, 0]
      ]
    end

    it 'Returns correct board array' do
      expect(result).to eq(board)
    end
  end
end
