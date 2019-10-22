class HeadCount

  def initialize
    @head_count = 0
  end
  
  def flip(coin)
    result = coin.flip
    score_update if result == "heads"
    result
  end

  def score
    return @head_count
  end

  def print_score
    puts "You have flipped heads #{@head_count} times!"
  end

  private

  def score_update
    @head_count += 1
  end

end

class Coin

  def initialize
    @random = Randomizer.new
  end

  def flip
    result = @random.random_number
    if result == 0
      return "heads"
    else
      return "tails"
    end
  end

end

class Randomizer

  def random_number
    [0,1].sample
  end

end


