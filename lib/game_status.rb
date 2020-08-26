# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
# Horizontal Wins
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
# Vertical Wins
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
# Diagonal Wins
  [0, 4, 8],
  [2, 4, 6],
]

def won?(board)
  board_empty = board.all? { |element| element === " " || element === ""}
  return false if (board_empty === true)

  WIN_COMBINATIONS.each do |win_combination|
    case board[win_combination[0]] && board[win_combination[1]] && board[win_combination[2]]
      when "X"
        return win_combination
      when "O"
        return win_combination
      else
        next
    end
  end
  return false # board not empty and no winning combinations
end

def full?(board)
  board.find { |item| item === " " || item === ""} == " " || "" ? true : false
end

def draw?
end

def over?
end

def winner
end

# need at least 5 turns to have a winning combo
#       0    1    2    3    4    5   6    7    8
# X = [" ", " ", " ", " ", " ", " "," ", " ", " "]
# 0 | 1 | 2
# 3 | 4 | 5
# 6 | 7 | 8
