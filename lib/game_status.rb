# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
]

def won?(board)
  if board.all? { |x| x == " " }
    return false
  elsif WIN_COMBINATIONS.all? { |x| !board.include?(x) }
    return false
  else
    WIN_COMBINATIONS.each do |x|
      if board.include?(x)
        return x
      end
    end
  end
end

def full?(board)
  return board.none? { |x| x == " " }
end

def draw?(board)
  return WIN_COMBINATIONS.none? { |x| board.include?(x) }
end

def over?(board)
  
end