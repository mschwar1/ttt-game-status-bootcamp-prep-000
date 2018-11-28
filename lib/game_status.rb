# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #slash
  [2, 4, 6] #backslash
]

def won?(board)

  if board.any?{|i| (i == "X" || i =="O")}

    WIN_COMBINATIONS.each do |win_combination|
        win_index_1 = win_combination[0] #first position in winning combo
        win_index_2 = win_combination[1]
        win_index_3 = win_combination[2]

        position_1 = board[win_index_1] #what's in that position on board?
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]

        if position_1 == "X" && position_2 == "X" && position_3 == "X"
          return win_combination
        elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
          return win_combination
        else
          false
        end
      end
  else
    false
  end
end
