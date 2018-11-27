# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],            #TOP
  [3, 4, 5],            #MIDDLE
  [6, 7, 8],            #BOTTOM
  [0, 3, 6],            #FIRST
  [1, 4, 7],            #SECOND
  [2, 5, 8],            #THIRD
  [0, 4, 8],
  [2, 4, 6]
]

def won? board
  board.each do |win_array|
    if {win_array.all? { |pos| pos == "X" } || win_array.all? { |pos| pos == "O" }}
      return win_array
    end
  end
  return false
end
