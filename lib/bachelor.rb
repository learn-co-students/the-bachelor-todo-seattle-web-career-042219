def get_first_name_of_season_winner(data, season)
    winner_first_name = nil

    data[season].each { | contestant |
        if contestant["status"] == "Winner"
            winner_first_name = contestant["name"].split.first.to_s
        end
    }

    return winner_first_name
end

def get_contestant_name(data, occupation)
  data.each {|season, contestant|
    contestant.each{|contestant|
      if contestant["occupation"] == occupation
        return contestant["name"].to_s
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
   data.each {|season, contestant|
    contestant.each{|contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
      
    }
  }
  return counter
end

def get_occupation(data, hometown)
    data.each {|season, contestant|
    contestant.each{|contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  sum = 0.0 
  count = 0
    data[season].each { | contestant |
      sum += contestant["age"].to_f
      count += 1
    }
  avg = (sum.to_f / count.to_f)
  
  return avg.round
end
