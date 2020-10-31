require 'checkers/row_checker'

RSpec.describe RowChecker do
  describe '.call' do
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

    context 'When valid' do
      it 'Returns true' do
        expect(described_class.call(board, 0, 2)).to be_truthy
      end
    end

    context 'When invalid' do
      it 'Returns false' do
        expect(described_class.call(board, 0, 9)).to be_falsey
      end
    end
  end
end
