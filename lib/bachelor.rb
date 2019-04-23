def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_array, contestant_hash|
    contestant_hash.find do |ind_contestant|
      if ind_contestant["occupation"] == occupation
        return ind_contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  same_hometown = []
  data.each do |season_array, contestant_hash|
    contestant_hash.each do |ind_contestant|
      if ind_contestant["hometown"] == hometown
        same_hometown << season_array
      end
    end
  end
  same_hometown.length
end

def get_occupation(data, hometown)
  data.each do |season_array, contestant_hash|
    contestant_hash.find do |ind_contestant|
      if ind_contestant["hometown"] == hometown
        return ind_contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = data[season].collect do |contestant_hash|
    contestant_hash["age"].to_i
  end

  summed_ages = ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  ages.count.to_f
  (summed_ages/contestant_count).round

end
