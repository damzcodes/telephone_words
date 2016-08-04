class TelephoneWords
  
  def keyboard
    keys = { 
      2 => ["a","b","c"], 3 => ["d","e","f"], 4 => ["g","h","i"], 5 => ["j","k","l"],
      6 => ["m","n","o"], 7 => ["p","q","r","s"], 8 => ["t","u","v"], 9 => ["w","x","y","z"]
    }
  end

  def patterns(*args)
    values = keyboard.values_at(*args)
    combos = values.first.product(*values[1..-1]).map(&:join)
    puts combos
  end
end

@example = TelephoneWords.new
@example.patterns(2,3)