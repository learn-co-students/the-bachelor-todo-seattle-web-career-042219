def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split.first.to_s
    end
  end
  return winner
end

def get_contestant_name(data, occupation)
  job = nil
  data.each do |season, contestants|
    contestants.each do |parameters, data|
      if parameters["occupation"] == occupation
        job = parameters["name"]
      end
    end
  end
  return job
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |parameters, data|
      if parameters["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occupation = nil
  data.each do |season, contestants|
    contestants.find do |parameters, data|
      if parameters["hometown"] == hometown
        occupation = parameters["occupation"]
      end
    end
  end
  return occupation
end

def get_average_age_for_season(data, season)
  sum = 0.0
  counter = 0
  data[season].each do |contestants|
    sum += contestants["age"].to_f
    counter += 1
  end
  average = (sum.to_f / counter.to_f)
  return average.round
end
