def turn_count(board)
  turn = 0
  board.each do |space|
    if space.include?("X") || space.include?("O")
      turn += 1
    end
  end
  return turn
end

def current_player(board)
  turn = turn_count(board)
  if turn == 0 || turn % 2 == 0
    return "X"
  else
    return "O"
  end
end