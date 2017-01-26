class Game
  def initialize
  end

  def score(scores)
    # print scores
    # ## Rearrange array to add 0 after a strike
    # scores_array = []
    # (0..scores.length - 1).each do |i|
    #   if i.even? && scores.at(i) == 10
    #     scores.delete_at(-1)
    #     scores_array << scores.at(i) << 0
    #   else
    #     scores_array << scores.at(i)
    #   end
    # end
    # scores = scores_array.compact
    # print scores

    ### check if strike or spare
    total = 0
    (0..scores.length - 1).each do |i|

      # strike
      if i.even? && (scores.at(i) == 10) && i != 20 && i != 21

        # 3 strikes in a row
        if scores.at( i + 2 ) == 10 && scores.at( i + 4 ) == 10
          total += 30
        else
          total += 10 + scores.at( i + 2 ) + scores.at( i + 3 )
        end

      # spare
      elsif i.even? && (scores.at(i) != 10) && ((scores.at(i) + scores.at(i+1)) == 10) && i != 20 && i != 21
        total += scores.at(i) + scores.at( i + 2 )

      # regular
      elsif i != 20 && i != 21
        total += scores.at(i)
      else
        total
      end
    end
    total
  end

end

@game = Game.new

#score = 12.times.map { 0 } #==> 0
#score = [5,5,5] + 17.times.map { 0 } #==> 20
#score = [10,3,4] + 17.times.map { 0 } #==> 24
#score = 20.times.map { 1 } #==> 20
#score = [0,10,5] + 17.times.map { 0 } #==> 20

#score = 12.times.map { 10 }
#score = [10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10] #==> 300
#score = 21.times.map { 5 }
score = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0] #==> 150

p @game.score(score)
