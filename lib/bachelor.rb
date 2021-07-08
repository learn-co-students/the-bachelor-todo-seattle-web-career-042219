def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  array_of_ages_for_season = []
  data[season].each do |contestant|
    array_of_ages_for_season << contestant["age"].to_f
  end
  return (array_of_ages_for_season.sum / array_of_ages_for_season.length).round
end
