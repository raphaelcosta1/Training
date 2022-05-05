def allowed_to_vote?(age)
  if age >= 18
    puts "You can vote!"
    return true
  else
    puts "You cannot vote yet"
    return false
  end
end
# TODO: return (not print!) a boolean stating whether `age` is old enough to vote
# NOTE: Use an if/else statment
